return {
  name = "Go run main.go",
  builder = function()
    return {
      cmd = { "go" },
      args = { "run $(find . -iname main.go)" },
    }
  end,
  condition = {
    filetype = { "go", "gomod" },
  },
}
