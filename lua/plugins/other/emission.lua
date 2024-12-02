return {
  "aileot/emission.nvim",
  event = "VeryLazy",
  opts = {
    attach = {
      -- Useful to avoid extra attaching attempts in simultaneous buffer editing
      -- such as `:bufdo` or `:cdo`.
      delay = 150,
      excluded_buftypes = {
        "help",
        "nofile",
        "terminal",
        "prompt"
      },
      -- NOTE: Nothing is excluded by default. Add any as you need, but check
      -- the 'buftype' at first.
      excluded_filetypes = {
        -- "oil",
      },
    },
    highlight = {
      duration = 300,        -- milliseconds
      min_byte = 2,          -- minimum bytes to highlight texts
      filter = function(buf) -- See below for examples.
        return true
      end,
      -- NOTE: Buffer texts watched by emission.nvim are cached for the removed
      -- text highlight feature when the buffer is attached and after each
      -- set of highlight emissions.
      -- However, `min_byte` and `filter` options are likely to prevent
      -- necessary recaches. The default value "InsertLeave" forces texts to
      -- be re-cached regardless of the option values.
      -- Please add |autocmd-events| properly if emitted highlight texts are
      -- outdated with your filter settings.
      additional_recache_events = { "InsertLeave" },
    },
    added = {
      priority = 102,
      -- The options for `vim.api.nvim_set_hl(0, "EmissionAdded", {hl_map})`.
      -- NOTE: If you keep "default" key set to `true`, you can arrange the
      -- highlight groups hl-EmissionAdded by nvim_set_hl(), based on your
      -- colorscheme.
      -- NOTE: You can use "link" key to link the highlight settings to an
      -- existing highlight group like hl-DiffAdd.
      hl_map = {
        default = true,
        bold = true,
        fg = "#dcd7ba",
        bg = "#2d4f67",
      },
    },
    -- The same options as `added` are available.
    -- Note that the default values might be different from `added` ones.
    removed = {
      priority = 101,
      -- The options for `vim.api.nvim_set_hl(0, "EmissionRemoved", {hl_map})`.
      hl_map = {
        default = true,
        bold = true,
        fg = "#dcd7ba",
        bg = "#672d2d",
      },
    },
  },
}
