local autocmd = vim.api.nvim_create_autocmd
local diag_conf = vim.diagnostic.config
local lsp_lines = require("lsp_lines")

lsp_lines.setup()
diag_conf({
  virtual_text = true,
  virtual_lines = false,
}, require("lazy.core.config").ns)
local function update_diagnostics()
  diag_conf({
    virtual_text = {
      format = function(diagnostic)
        local win_type = vim.fn.win_gettype()
        local cur_line = vim.fn.line(".")
        if win_type == "popup" or win_type == "floating" then
          return diagnostic.message
        elseif diagnostic.lnum == cur_line - 1 then
          --- @diagnostic disable-next-line: return-type-mismatch
          return nil
        end
        return diagnostic.message
      end,
    },
    virtual_lines = { only_current_line = true },
  })
end
update_diagnostics()
autocmd("CursorMoved", {
  callback = function()
    local win_type = vim.fn.win_gettype()

    if win_type == "popup" or win_type == "floating" then
      return
    end

    update_diagnostics()
  end,
})

-- This file is automatically loaded by lazyvim.config.init.

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Check if we need to reload the file when it changed
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime"),
  callback = function()
    if vim.o.buftype ~= "nofile" then
      vim.cmd("checktime")
    end
  end,
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd("tabdo wincmd =")
    vim.cmd("tabnext " .. current_tab)
  end,
})

-- go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup("last_loc"),
  callback = function(event)
    local exclude = { "gitcommit" }
    local buf = event.buf
    if vim.tbl_contains(exclude, vim.bo[buf].filetype) or vim.b[buf].lazyvim_last_loc then
      return
    end
    vim.b[buf].lazyvim_last_loc = true
    local mark = vim.api.nvim_buf_get_mark(buf, '"')
    local lcount = vim.api.nvim_buf_line_count(buf)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "PlenaryTestPopup",
    "checkhealth",
    "dbout",
    "gitsigns-blame",
    "grug-far",
    "help",
    "lspinfo",
    "neotest-output",
    "neotest-output-panel",
    "neotest-summary",
    "notify",
    "qf",
    "snacks_win",
    "spectre_panel",
    "startuptime",
    "tsplayground",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.schedule(function()
      vim.keymap.set("n", "q", function()
        vim.cmd("close")
        pcall(vim.api.nvim_buf_delete, event.buf, { force = true })
      end, {
        buffer = event.buf,
        silent = true,
        desc = "Quit buffer",
      })
    end)
  end,
})

-- make it easier to close man-files when opened inline
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("man_unlisted"),
  pattern = { "man" },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
  end,
})

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "text", "plaintex", "typst", "gitcommit", "markdown", "md" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "markdown", "md" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true

    -- Maps for markdown
    -- Headers
    vim.keymap.set("n", "-", "I#<esc>")
    vim.keymap.set("n", "=", function()
      vim.cmd("normal! F#")
      vim.cmd("normal! x")
    end)

    local function toggle_todo()
      local line = vim.fn.getline(".")
      local col = vim.fn.col(".")

      local start_pos, end_pos = line:find("%[x%]") -- ищем [x]

      if start_pos then
        line = line:sub(1, start_pos) .. " ]" .. line:sub(end_pos + 1)
      else
        start_pos, end_pos = line:find("%[ %]") -- ищем [ ]
        if start_pos then
          line = line:sub(1, start_pos) .. "x]" .. line:sub(end_pos + 1)
        end
      end

      vim.fn.setline(".", line)
      vim.fn.cursor(".", col)
    end

    vim.keymap.set("n", "T", toggle_todo, { desc = "Toggle todo item" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "gomod", "html", "css", "json" },
  callback = function()
    vim.keymap.set("n", "<leader>ct", "<cmd>!go mod tidy<cr>", { desc = "Go mod tidy" })

    vim.keymap.set("n", "<leader>dr", "<cmd>Rest run<cr>", { desc = "Run rest" })
    vim.keymap.set("n", "<leader>d.", function()
      require("snacks").terminal("posting", { cwd = LazyVim.root() })
    end, { desc = "Open posting" })

    vim.keymap.set("n", "<leader>dl", "<cmd>LivePreview start<cr>", { desc = "Start live preview" })
  end,
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function()
    vim.opt_local.conceallevel = 0
  end,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = augroup("auto_create_dir"),
  callback = function(event)
    if event.match:match("^%w%w+:[\\/][\\/]") then
      return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})
