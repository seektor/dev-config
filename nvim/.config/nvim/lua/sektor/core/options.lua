-- show relative line numbers
vim.opt.relativenumber = true
-- show absolute line number on cursor line
vim.opt.number = true

-- 2 spaces for tabs
vim.opt.tabstop = 2
-- 2 spaces for indent width
vim.opt.shiftwidth = 2
-- expand tab to spaces
vim.opt.expandtab = true
-- copy indent from current line to new one
vim.opt.autoindent = true

-- make 8 lines from the top always visible
vim.opt.scrolloff = 8

-- disable line wrapping
vim.opt.wrap = false

-- ignore case when searching
vim.opt.ignorecase = true
-- search case-sensitive when mixed case search
vim.opt.smartcase = true

-- highlight cursor line
vim.opt.cursorline = true

-- termguicolors
vim.opt.termguicolors = true
-- make colorschemes dark if possible
vim.opt.background = "dark"
-- show sign column
vim.opt.signcolumn = "yes"

-- allow backspace on indent, end of line or insert mode start position
vim.opt.backspace = "indent,eol,start"

-- use system clipboard as default register
vim.opt.clipboard:append("unnamedplus")

-- split vertical window to the right
vim.opt.splitright = true
-- split horizontal window to the bottom
vim.opt.splitbelow = true

-- consider string-string as whole word
vim.opt.iskeyword:append("-")

-- spell check
vim.opt.spell = true
