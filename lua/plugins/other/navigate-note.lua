return {
  "you-n-g/navigate-note.nvim",
  enabled = false,
  event = "VeryLazy",
  opts = {
    filename = "nav.md",
    width = 0.6,
    keymaps = {
      nav_mode = {
        next = "<tab>",
        prev = "<s-tab>",
        open = "<m-[>",
        switch_back = "<leader>nh",
        append_link = "<leader>np",
        jump_mode = "<leader>nl",
      },
      add = "<leader>na",
      open_nav = "<leader>nh",
    },
    context_line_count = {
      tab = 8,
      vline = 2,
    },
  },
}
