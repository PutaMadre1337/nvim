return {
  "yetone/avante.nvim",
  enabled = false,
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "openrouter",
    vendors = {
      openrouter = {
        __inherited_from = "openai",
        endpoint = "https://openrouter.ai/api/v1",
        api_key_name = "OPENROUTER_API_KEY",
        model = "deepseek/deepseek-r1",
      },
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },

  custom_tools = {
    {
      name = "run_go_tests", -- Unique name for the tool
      description = "Run Go unit tests and return results", -- Description shown to AI
      command = "go test -v ./...", -- Shell command to execute
      param = { -- Input parameters (optional)
        type = "table",
        fields = {
          {
            name = "target",
            description = "Package or directory to test (e.g. './pkg/...' or './internal/pkg')",
            type = "string",
            optional = true,
          },
        },
      },
      returns = { -- Expected return values
        {
          name = "result",
          description = "Result of the fetch",
          type = "string",
        },
        {
          name = "error",
          description = "Error message if the fetch was not successful",
          type = "string",
          optional = true,
        },
      },
      func = function(params, on_log, on_complete) -- Custom function to execute
        local target = params.target or "./..."
        return vim.fn.system(string.format("go test -v %s", target))
      end,
    },

    {
      name = "run_go_app",
      description = "Debug go app",
      command = "go run $(find . -iname main.go)",
      returns = {
        {
          name = "result",
          description = "result",
          type = "string",
          optional = true,
        },
      },
      func = function(params, on_log, on_complete)
        -- 1. Найти файл main.go
        local find_cmd = "find . -iname main.go -print -quit"
        local main_file = vim.fn.system(find_cmd):gsub("\n", "")

        -- 2. Проверка существования файла
        if main_file == "" then
          return nil, "Main.go not found in project"
        end

        -- 3. Запуск приложения
        local run_cmd = "go run " .. main_file
        on_log("[GO APP] Starting: " .. run_cmd)

        -- 4. Асинхронный запуск
        local result = vim.fn.system(run_cmd)

        -- 5. Обработка результата
        if vim.v.shell_error ~= 0 then
          return nil, "Exit code: " .. vim.v.shell_error .. "\n" .. result
        end
        return result
      end,
    },
  },
}
