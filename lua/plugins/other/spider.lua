return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  dependencies = {
    "theHamsta/nvim_rocks",
    build = "python3 -m venv venv && venv/bin/pip install hererocks && venv/bin/python -m hererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua",
    config = function()
      require("nvim_rocks").ensure_installed("luautf8")
    end,
  },
}
