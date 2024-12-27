return {
  "brenton-leighton/multiple-cursors.nvim",
  event = "VeryLazy",
  version = "*", -- Use the latest tagged version
  opts = {}, -- This causes the plugin setup function to be called
  keys = {
    {
      "<C-2>",
      "<Cmd>MultipleCursorsAddDown<CR>",
      mode = { "n", "x" },
      desc = "Add cursor and move down",
    },
    {
      "<C-3>",
      "<Cmd>MultipleCursorsAddUp<CR>",
      mode = { "n", "x" },
      desc = "Add cursor and move up",
    },

    {
      "<C-Up>",
      "<Cmd>MultipleCursorsAddUp<CR>",
      mode = { "n", "i", "x" },
      desc = "Add cursor and move up",
    },
    {
      "<C-Down>",
      "<Cmd>MultipleCursorsAddDown<CR>",
      mode = { "n", "i", "x" },
      desc = "Add cursor and move down",
    },

    {
      "<C-LeftMouse>",
      "<Cmd>MultipleCursorsMouseAddDelete<CR>",
      mode = { "n", "i" },
      desc = "Add or remove cursor",
    },

    {
      "<Leader>va",
      "<Cmd>MultipleCursorsAddMatches<CR>",
      mode = { "n", "x" },
      desc = "Add cursors to cword",
    },
    {
      "<Leader>vA",
      "<Cmd>MultipleCursorsAddMatchesV<CR>",
      mode = { "n", "x" },
      desc = "Add cursors to cword in previous area",
    },

    {
      "<Leader>vd",
      "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
      mode = { "n", "x" },
      desc = "Add cursor and jump to next cword",
    },
    {
      "<Leader>vD",
      "<Cmd>MultipleCursorsJumpNextMatch<CR>",
      mode = { "n", "x" },
      desc = "Jump to next cword",
    },

    {
      "<Leader>vl",
      "<Cmd>MultipleCursorsLock<CR>",
      mode = { "n", "x" },
      desc = "Lock virtual cursors",
    },
  },
}
