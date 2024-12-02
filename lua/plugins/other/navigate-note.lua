return {
  "you-n-g/navigate-note.nvim",
  lazy = true,
  opts = {
    filename = "nav.md", -- The filename of the markdown.
    width = 0.6,         -- The width of the popup window when jumping in the file with <tab>.
    keymaps = {
      nav_mode = {
        -- Navigation & Jumping
        next = "<tab>",
        prev = "<s-tab>",
        open = "<m-[>",
        switch_back = "<leader>nh", -- Switch back to the previous file from `nav.md`.
        -- Editing
        append_link = "<leader>np", -- (P)aste will more align with the meaning.
        -- Mode switching
        jump_mode = "<leader>nl",   -- When we jump to a file, jump to the file only or jump to the exact file:line.
      },
      add = "<leader>na",
      open_nav = "<leader>nh", -- Switch to `nav.md`.
    },
    context_line_count = {     -- It would be a total of `2 * context_line_count - 1` lines.
      tab = 8,
      vline = 2,
    },
  }
}
