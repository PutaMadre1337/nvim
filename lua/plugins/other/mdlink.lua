return {
  "Nedra1998/nvim-mdlink",
  lazy = true,
  ft = "markdown",
  config = function()
    require("nvim-mdlink").setup({
      keymap = true,
      cmp = true,
    })
  end,
}
