return {
  {
    "Kurama622/profile.nvim",
    enabled = true,
    dependencies = { "3rd/image.nvim" },
    config = function()
      local comp = require("profile.components")
      require("profile").setup({

        avatar_path = "/home/username/.config/nvim/lua/plugins/ui/pictures/devushka_demon_v_krovavih_shramah_sidit_na_demonicheskom.png",
        avatar_opts = {
          avatar_width = 150,
          avatar_height = 150,
          avatar_x = 60,
          avatar_y = 20,
          force_blank = false,
        },

        git_contributions = {
          start_week = 1,
          end_week = 53,
          empty_char = " ",
          full_char = { "", "󰧞", "", "", "" },
          fake_contributions = nil,
          cache_path = "/tmp/profile.nvim/",
          cache_duration = 24 * 60 * 60,
        },
        hide = {
          statusline = false,
          tabline = false,
        },
        disable_keys = { "j", "k", "<Left>", "<Right>", "<Up>", "<Down>", "<C-f>" },
        format = function()
          comp:card_component_render({
            type = "table",
            content = function()
              return {
                {
                  title = "Files",
                  description = [[
C -> Neovim
H -> Hyprland
M -> Notes
R -> Recently
F -> Find files
N -> New file
D -> Development
]],
                },
                {
                  title = "Session",
                  description = [[
Q -> Quit
S -> Restore session
L -> List session
]],
                },
              }
            end,
            hl = {
              border = "ProfileWhite",
              text = "ProfileWhite",
            },
          })
          comp:separator_render()

          comp:git_contributions_render("ProfileGreen")
        end,
      })
      vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>Profile<cr>", { silent = true })
      local user_mappings = {
        n = {
          ["r"] = "<cmd>lua require('telescope.builtin').oldfiles()<cr>",
          ["f"] = "lua LazyVim.pick()()",
          ["c"] = "<cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/.config/nvim' })<cr>",
          ["h"] = "<cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/.config/hypr/' })<cr>",
          ["m"] = "<cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/Documents/Notes/' })<cr>",
          ["g"] = "<cmd>lua require('telescope.builtin').live_grep()<cr>",
          ["s"] = "<cmd>lua require('persistence').load()<cr>",
          ["d"] = "<cmd>lua require('telescope.builtin').find_files({ cwd = '$HOME/Development/' })<cr>",
          ["q"] = "<cmd>q<cr>",
          ["n"] = "ene | startinsert",
          ["l"] = "<cmd>lua require('persistence').select()<cr>",
        },
      }
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "profile",
        callback = function()
          for mode, mapping in pairs(user_mappings) do
            for key, cmd in pairs(mapping) do
              vim.api.nvim_buf_set_keymap(0, mode, key, cmd, { noremap = true, silent = true })
            end
          end
        end,
      })
    end,
  },
  {
    "3rd/image.nvim",
    enabled = true,
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {},
  },
}
