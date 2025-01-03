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
  vim.cmd("new")
  local command = "tammy " .. args.args
  local output = vim.fn.system(command)
  vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(output, "\n"))
  vim.bo.buftype = "nofile"
  vim.bo.bufhidden = "hide"
  vim.bo.swapfile = false
  vim.wo.wrap = false
  vim.wo.number = false
  vim.wo.relativenumber = false
  vim.bo.filetype = "man"
end, {
  nargs = "*",
})
