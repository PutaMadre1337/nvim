return {
  "stevearc/overseer.nvim",
  opts = {},

  config = function()
    require("overseer").setup({
      templates = {
        "builtin",
        "golang_run",
      },
    })
  end,
}
