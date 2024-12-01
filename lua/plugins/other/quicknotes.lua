return {
  "davmacario/nvim-quicknotes",
  lazy = true,
  keys = { "<leader>vQ" },
  cmd = { "Quicknotes", "QuicknotesClear", "QuicknotesCleanup" }, -- Lazy-load the plugin

  config = function()
    require("nvim-quicknotes").setup()
  end,
}
