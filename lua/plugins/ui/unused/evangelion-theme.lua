return {
  { "typicode/bg.nvim", lazy = false },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "evangelion",
  } },
  {
    "xero/evangelion.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      overrides = {
        keyword = { fg = "#00ff00", bg = "#222222" },
        ["@boolean"] = { link = "Special" },
      },
    },
  },
}
