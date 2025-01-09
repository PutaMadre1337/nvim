vim.api.nvim_create_user_command("SearchSelected", function()
  local selected_text = vim.fn.getreg("+")
  if selected_text == "" then
    print("No text selected")
    return
  end

  local url = "https://duckduckgo.com/?t=ffab&q=" .. vim.fn.escape(vim.fn.getreg("+"), "%")
  local command = { "xdg-open", url }

  vim.fn.system(command)
end, {})

vim.api.nvim_create_user_command("RemoveComments", function()
  local bufnr = vim.api.nvim_get_current_buf()
  local language_tree = vim.treesitter.get_parser(bufnr)
  local tree = language_tree:parse()[1]
  local query = vim.treesitter.query.parse(

    language_tree._lang,
    [[
(comment) @comment
]]
  )
  for _, match, _ in query:iter_matches(tree:root(), bufnr) do
    local start_row, start_col, end_row, end_col = match[1]:range()
    vim.api.nvim_buf_set_text(bufnr, start_row, start_col, end_row, end_col, { "" })
  end

  vim.cmd("update")
end, {})

vim.api.nvim_create_user_command("Tammy", function(args)
  local buf = vim.api.nvim_create_buf(false, true)

  local output = vim.fn.system("tammy " .. args.args)
  local lines = vim.split(output, "\n")

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  local win_width = vim.o.columns
  local win_height = vim.o.lines

  local output_line_count = #lines
  local height = math.max(1, math.min(output_line_count + 2, math.floor(win_height * 0.8)))

  local max_line_length = 0
  for _, line in ipairs(lines) do
    max_line_length = math.max(max_line_length, vim.fn.strdisplaywidth(line))
  end

  local width = math.min(max_line_length + 4, math.floor(win_width * 0.8))

  local row = math.floor((win_height - height) / 2)
  local col = math.floor((win_width - width) / 2)

  local tammy_win = vim.api.nvim_open_win(buf, true, {
    border = "rounded",
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
  })

  vim.bo[buf].swapfile = false
  vim.wo[tammy_win].wrap = false
  vim.wo[tammy_win].number = false
  vim.wo[tammy_win].relativenumber = false
  vim.bo[buf].buftype = "nofile"
  vim.bo[buf].bufhidden = "hide"
  vim.bo[buf].filetype = "man"

  vim.api.nvim_create_autocmd("WinLeave", {
    callback = function()
      if vim.api.nvim_win_is_valid(tammy_win) then
        vim.api.nvim_win_close(tammy_win, true)
      end
    end,
    group = vim.api.nvim_create_augroup("TammyWindowClose", { clear = true }),
    buffer = buf,
  })
end, {
  nargs = "*",
  complete = function()
    return { "-f list", "-f tree", "-ft ", "-h" }
  end,
})
