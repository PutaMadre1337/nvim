return {
  "Kurama622/profile.nvim",
  dependencies = { "3rd/image.nvim" },
  config = function()
    local comp = require("profile.components")
    require("profile").setup({

      avatar_path =
      "/home/username/.config/nvim/lua/plugins/ui/pictures/devushka_ekaj_stoit_nochu_pri_svete_luni_na.png",
      -- avatar position options
      avatar_opts = {
        avatar_width = 150,
        avatar_height = 150,
        avatar_x = 60,
        avatar_y = 20,
        force_blank = false, -- if true, will create some blank lines (avatar_height + avatar_y)
      },

      git_contributions = {
        start_week = 1, -- The minimum is 1
        end_week = 53,  -- The maximum is 53
        empty_char = " ",
        full_char = { "", "󰧞", "", "", "" },
        fake_contributions = nil,
        cache_path = "/tmp/profile.nvim/", -- Cache the data of git contributions locally.
        cache_duration = 24 * 60 * 60,     -- seconds, The cache validity period is 1 day.

        --[[
          -- If you want to fake git's contribution information,
          -- you can pass a function to fake_contributions.
          fake_contributions = function()
            local ret = {}
            for i = 1, 53 do
              ret[tostring(i)] = {}
              for j = 1, 7 do
                ret[tostring(i)][j] = math.random(0, 5)
              end
            end
            return ret
          end,
          ]]

        -- if you want to use a third-party API to fetch git contributions
        -- non_official_api_cmd = [[ curl -s "https://github-contributions-api.jogruber.de/v4/%s?y=$(date -d "1 year ago" +%%Y)&y=$(date +%%Y)" \
        --    | jq --arg start $(date -d "1 year ago" +%%Y-%%m-%%d) --arg end $(date +%%Y-%%m-%%d) \
        --    '.contributions | [ .[] | select((.date >= $start) and (.date <= $end)) ] | sort_by(.date) | (.[0].date | strptime("%%Y-%%m-%%d") | strftime("%%w") | tonumber) as $wd | map(.count) | ([range(0, $wd) ] | map(0)) + . | . as $array | reduce range(0; length; 7) as $i ({}; . + {($i/7+1 | tostring): $array[$i:$i+7] })' ]],
      },
      hide = {
        statusline = false,
        tabline = false,
      },
      disable_keys = { "h", "j", "k", "<Left>", "<Right>", "<Up>", "<Down>", "<C-f>" },
      -- Customize the content to render
      format = function()
        -- render avatar
        comp:avatar()
        -- customize text component
        comp:text_component_render({
          -- comp:text_component("", "center", "ProfileRed"),
          -- comp:text_component("──── By Kurama622", "right", "ProfileBlue"),
        })
        comp:separator_render()

        -- Custom card component, render git repository by default
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
L -> Lazy
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
        ["q"] = "<cmd>q<cr>",
        ["n"] = "ene | startinsert",
        ["l"] = "<cmd>Lazy<cr>",
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
}
