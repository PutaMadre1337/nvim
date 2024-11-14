vim.api.nvim_create_user_command('SearchSelected', function()
  local selected_text = vim.fn.getreg('+')
  if selected_text == '' then
    print("No text selected")
    return
  end

  local url = 'https://duckduckgo.com/?t=ffab&q=' .. vim.fn.escape(vim.fn.getreg('+'), '%')
  local command = { 'xdg-open', url }

  vim.fn.system(command)
end, {})
