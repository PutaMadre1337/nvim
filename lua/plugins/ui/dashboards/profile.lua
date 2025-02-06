return {
  {
    "Kurama622/profile.nvim",
    cond = not (vim.g.neovide or false),
    enabled = true,
    dependencies = { "3rd/image.nvim" },
    config = function()
      local comp = require("profile.components")
      require("profile").setup({

        avatar_path = "/home/username/.config/nvim/lua/plugins/ui/pictures/harley_quinn.png",
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
        disable_keys = { "h", "l", "j", "k", "<Left>", "<Right>", "<Up>", "<Down>", "<C-f>" },
        format = function()
          comp:avatar()
          comp:separator_render()
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
          ["r"] = "<cmd>FzfLua oldfiles<cr>",
          ["f"] = "<cmd>lua LazyVim.pick()()<cr>",
          ["c"] = "<cmd>FzfLua files cwd='$HOME/.config/nvim'<cr>",
          ["h"] = "<cmd>FzfLua files cwd='$HOME/.config/hypr'<cr>",
          ["m"] = "<cmd>FzfLua files cwd='$HOME/Documents'<cr>",
          ["g"] = "<cmd>lua require('telescope.builtin').live_grep()<cr>",
          ["s"] = "<cmd>lua require('persistence').load()<cr>",
          ["q"] = "<cmd>q<cr>",
          ["n"] = "<cmd>ene | startinsert<cr>",
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
    cond = not (vim.g.neovide or false),
    enabled = true,
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {},
    config = function()
      require("image").setup({
        backend = "kitty",
        processor = "magick_cli", -- or "magick_cli"
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = false,
            floating_windows = true, -- if true, images will be rendered in floating markdown windows
            filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
          },
          neorg = {
            enabled = true,
            filetypes = { "norg" },
          },
          typst = {
            enabled = true,
            filetypes = { "typst" },
          },
          html = {
            enabled = false,
          },
          css = {
            enabled = false,
          },
        },
        max_width = nil,
        max_height = nil,
        max_width_window_percentage = nil,
        max_height_window_percentage = 50,
        window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
        window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        editor_only_render_when_focused = true, -- auto show/hide images when the editor gains/looses focus
        tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
      })
    end,
  },
}
