local opt = vim.opt

-- show relative line numbers
opt.relativenumber = true
-- show absolute line number on cursor line
opt.number = true

-- 2 spaces for tabs
opt.tabstop = 4
-- 2 spaces for indent width
opt.shiftwidth = 4
-- expand tab to spaces
opt.expandtab = true
-- copy indent from current line to new one
opt.autoindent = true

-- make 8 lines from the top always visible
opt.scrolloff = 8

-- disable line wrapping
opt.wrap = false

-- ignore case when searching
opt.ignorecase = true
-- search case-sensitive when mixed case search
opt.smartcase = true

-- highlight cursor line
opt.cursorline = true

-- make the lighbulb rerender faster but there is also something with swap file... read before use
-- https://github.com/kosayoda/nvim-lightbulb/issues/38
-- opt.updatetime = 4000 (ms default) 

-- termguicolors
opt.termguicolors = true
-- make colorschemes dark if possible
opt.background = "dark"
-- show sign column
opt.signcolumn = "yes"

-- allow backspace on indent, end of line or insert mode start position
opt.backspace = "indent,eol,start"

-- use system clipboard as default register
opt.clipboard:append("unnamedplus")

-- split vertical window to the right
opt.splitright = true
-- split horizontal window to the bottom
opt.splitbelow = true

-- consider string-string as whole word
opt.iskeyword:append("-")
