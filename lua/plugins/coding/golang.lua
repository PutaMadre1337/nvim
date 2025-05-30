return {
  "ray-x/go.nvim",
  enabled = false,
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("overseer.template.go").setup()
  end,
  event = { "CmdlineEnter" },
  lazy = true,
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
