return {
  "nvimdev/dashboard-nvim",
  enabled = true,
  lazy = false,
  opts = function()
    local logo = require("plugins.ui.logos.026")

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
        center = {
          { action = "lua LazyVim.pick()()", desc = " Hайти файл", icon = " ", key = "f" },
          { action = "ene | startinsert", desc = " Hовый файл", icon = " ", key = "n" },
          { action = 'lua LazyVim.pick("oldfiles")()', desc = " Hедавние файлы", icon = " ", key = "r" },
          { action = 'lua LazyVim.pick("live_grep")()', desc = " Hайти текст", icon = " ", key = "g" },
          { action = "lua LazyVim.pick.config_files()()", desc = " Kонфиг", icon = " ", key = "c" },
          {
            action = 'lua require("persistence").load()',
            desc = " Bосстановить сессию",
            icon = " ",
            key = "s",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = " Bыход",
            icon = " ",
            key = "q",
          },
        },
      },
    }
  end,
}
