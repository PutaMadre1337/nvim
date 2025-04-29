require("config.user-commands")
local m = vim.keymap.set
local d = vim.keymap.del

d("n", "<leader>.")
d("n", "<leader>l")
d("n", "<leader>S")
d("n", "<leader>dph")
d("n", "<leader>dpp")
d("n", "<leader>dps")

local pantran = require("pantran")

m("n", "<leader>k", '<cmd>lua require("kubectl").toggle({ tab = false })<cr>')
m({ "n", "x" }, "<leader>Tre", "<cmd>Pantran target=en<cr>", { desc = "Translate on english" })
m({ "n", "x" }, "<leader>Trr", "<cmd>Pantran target=ru<cr>", { desc = "Translate on russian" })
m("n", "<leader>Tr", pantran.motion_translate)
m("n", "<leader>Trv", function()
  return pantran.motion_translate() .. "_"
end)
m("x", ",", pantran.motion_translate)

m("n", "<leader>gg", function()
  require("snacks").terminal("lazygit", { cwd = LazyVim.root() })
end, { desc = "Open LazyGit" })
m("n", "<leader>gC", function()
  require("snacks").terminal("oco --fgm", { cwd = LazyVim.root() })
end, { desc = "Generate commit message" })
m("n", "<leader>D", function()
  require("snacks").terminal("lazydocker")
end, { desc = "Open LazyDocker" })
m("n", "<leader>B", function()
  require("snacks").terminal("btop")
end, { desc = "Open Btop" })

-- map("n", "<leader>qa", "<cmd>ASToggle<CR>", {})

m("n", "c", '"_c')
m("n", "C", '"_C')

m("n", "<leader>vq", "<cmd>Quicknotes<cr>", { desc = "Open quicknotes" })
m("n", "<leader>vQ", "<cmd>QuicknotesClear<cr>", { desc = "Clear quicknotes" })
m("n", "t", "s", { desc = "Replace character and enter insert mode" })

m("n", "<F1>", "<cmd>SearchSelected<cr>")
m("v", "_p", '"_c<Esc>p', { desc = "Paste without copying into register" })

m("n", "<C-g>", function()
  vim.cmd([[
  normal! ggVG
  ]])
end, { desc = "Select all" })

m("n", "<C-c>", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], { desc = "Search and replace word under the cursor" })

m("n", "yc", "yy<cmd>normal gcc<cr>p", { desc = "Duplicate a line and comment out the first line" })

m({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
m({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
m({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
m({ "n", "o", "x" }, "ц", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
m({ "n", "o", "x" }, "у", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
m({ "n", "o", "x" }, "и", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

m({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
m({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

m("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
m("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
m("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
m("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

m("i", "<C-l>", "<Right><BS>")
m("i", "<C-д>", "<Right><BS>")
m("i", "<C-р>", "<BS>")
m("i", "<C-ц>", "<C-w>")

m("i", "<M-h>", "<Left>")
m("i", "<M-р>", "<Left>")
m("i", "<M-l>", "<Right>")
m("i", "<M-д>", "<Right>")
m("i", "<M-Ф>", "A")
m("i", "<M-ф>", "a")
m("i", "<M-Ш>", "I")
m("i", "<M-ш>", "i")

m("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
m("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
m("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
m("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

m("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
m("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
m("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
m("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
m("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
m("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

m("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
m("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
m("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
m("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
m("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
m("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
m("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

m({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

m(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / Clear hlsearch / Diff Update" }
)

m("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
m("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
m("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
m("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
m("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
m("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- m("i", ",", ",<c-g>u")
m("i", ".", ".<c-g>u")
m("i", ";", ";<c-g>u")

m({ "i", "x", "n", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save File" })

m("v", "<", "<gv")
m("v", ">", ">gv")

m("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
m("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

m("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

m("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
m("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
m("n", "<leader>gq", "<cmd>GitConflictListQf<cr>", { desc = "Git Conflict List" })

m("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
m("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

m({ "n", "v" }, "<leader>cf", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
m("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
m("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
m("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
m("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
m("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
m("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
m("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

m("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })
m("n", "<leader>qw", "<cmd>wa<cr>", { desc = "Write All" })

m("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
m("n", "<leader>uI", "<cmd>InspectTree<cr>", { desc = "Inspect Tree" })

m("n", "<leader>L", function()
  LazyVim.news.changelog()
end, { desc = "LazyVim Changelog" })

m("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

m("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
m("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
m("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
m("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

m("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
m("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
m("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
m("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
m("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
m("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
m("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
