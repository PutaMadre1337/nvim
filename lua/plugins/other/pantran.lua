return {
  "potamides/pantran.nvim",
  config = function()
    require("pantran").setup({
      default_engine = "google",
      engines = {
        google = {
          default_source = "auto",
          default_target = "ru",
        },
      },
      controls = {
        mappings = {
          edit = {
            n = {
              ["j"] = "gj",
              ["k"] = "gk",
              ["<C-s>"] = require("pantran.ui.actions").yank_close_translation,
            },
            i = {
              ["<C-s>"] = require("pantran.ui.actions").yank_close_translation,
            },
          },
          select = {
            n = {},
          },
        },
      },
    })
  end,
}
