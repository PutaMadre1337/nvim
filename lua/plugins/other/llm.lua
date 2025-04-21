return {
  "Kurama622/llm.nvim",
  enabled = false,
  dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
  cmd = { "LLMSesionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
  config = function()
    local tools = require("llm.common.tools")
    require("llm").setup({
      app_handler = {
        OptimizeCode = {
          handler = tools.side_by_side_handler,
        },

        -- modify the prompt and options
        TestCode = {
          handler = tools.side_by_side_handler,
          prompt = "Write a test for the following code, only return the test code:",
          opts = {
            right = {
              title = " Result ",
            },
          },
        },
        OptimCompare = {
          handler = tools.action_handler,
        },
        Translate = {
          handler = tools.qa_handler,
        },
      },
    })
  end,
  keys = {
    { "<leader>tc", mode = "n", "<cmd>LLMAppHandler TestCode<cr>" },
    { "<leader>t", mode = "x", "<cmd>LLMSelectedTextHandler 英译汉<cr>" },
    { "<leader>at", mode = "n", "<cmd>LLMAppHandler Translate<cr>" },
    { "<leader>ao", mode = "x", "<cmd>LLMAppHandler OptimCompare<cr>" },
  },
}
