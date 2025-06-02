return {
  {
    "nvimdev/dashboard-nvim",
    -- cond = (vim.g.neovide or false),
    enabled = true,
    opts = function()
      local logo = require("plugins.ui.logos.030")

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
            {
              action = 'lua LazyVim.pick("oldfiles")()',
              desc = " Hедавние файлы",
              icon = " ",
              key = "r",
            },
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
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- open dashboard after closing lazy
      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end

      return opts
    end,
  },
}
