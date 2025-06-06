vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.autoformat = true
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
vim.g.root_spec = {
  "lsp",
  {
    "src",
    "Dockerfile",
    "docker-compose.yml",
    "Jenkinsfile",
    "Vagrantfile",
    ".git",
    "lua",
    "go.mod",
    "cmd",
  },
  "cwd",
}
vim.g.trouble_lualine = true
vim.g.lazyvim_picker = "fzf"
-- vim.g.bullets_set_mappings = 0
vim.g.bullets_custom_mappings = {
  { "imap", "<leader><cr>", "<Plug>(bullets-newline)" },
  { "inoremap", "<C-cr>", "<cr>" },
  { "nmap", "o", "<Plug>(bullets-newline)" },
  { "vmap", "gN", "<Plug>(bullets-renumber)" },
  { "nmap", "gN", "<Plug>(bullets-renumber)" },
  { "nmap", "<leader>x", "<Plug>(bullets-toggle-checkbox)" },
  { "imap", "<C-t>", "<Plug>(bullets-demote)" },
  { "nmap", ">>", "<Plug>(bullets-demote)" },
  { "vmap", ">", "<Plug>(bullets-demote)" },
  { "imap", "<C-d>", "<Plug>(bullets-promote)" },
  { "nmap", "<<", "<Plug>(bullets-promote)" },
  { "vmap", "<", "<Plug>(bullets-promote)" },
}

local opt = vim.opt

vim.opt.numberwidth = 3
vim.opt.signcolumn = "yes:1"
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
opt.laststatus = 3
opt.autowrite = true
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 2
opt.confirm = true
opt.cursorline = false
opt.expandtab = true
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldlevel = 99
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
opt.formatoptions = "jcroqlnt"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.jumpoptions = "view"
opt.laststatus = 3
opt.linebreak = true
opt.list = true
opt.mouse = "a"
opt.number = true
opt.pumblend = 10
opt.pumheight = 10
opt.relativenumber = true
opt.ruler = false
opt.scrolloff = 4
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true
opt.shiftwidth = 2
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.showmode = false
opt.sidescrolloff = 8
opt.smartcase = true
opt.smartindent = true
opt.spelllang = { "en", "ru" }
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = vim.g.vscode and 1000 or 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200
opt.virtualedit = "block"
opt.wildmode = "longest:full,full"
opt.winminwidth = 5
opt.wrap = false

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = "expr"
  opt.foldtext = ""
else
  opt.foldmethod = "indent"
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end

vim.g.markdown_recommended_style = 0
