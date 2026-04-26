local opt = vim.opt

-- Line numbers
opt.number = true         -- show absolute line number on current line
opt.relativenumber = true -- show relative numbers on all other lines (great for jump counts)

-- Indentation
opt.tabstop = 2      -- a tab character renders as 2 spaces
opt.shiftwidth = 2   -- >> / << shift by 2 spaces
opt.expandtab = true -- insert spaces instead of tab characters
opt.smartindent = true -- auto-indent new lines based on syntax

-- Search
opt.ignorecase = true -- case-insensitive search by default
opt.smartcase = true  -- switch to case-sensitive when query contains uppercase
opt.hlsearch = false  -- don't keep matches highlighted after search
opt.incsearch = true  -- highlight matches as you type

-- Appearance
opt.termguicolors = true  -- enable 24-bit RGB colors (required by most themes)
opt.cursorline = true     -- highlight the line the cursor is on
opt.signcolumn = "yes"    -- always show sign column so text doesn't shift on diagnostics
opt.scrolloff = 8         -- keep 8 lines visible above/below cursor when scrolling
opt.sidescrolloff = 8     -- keep 8 columns visible left/right when scrolling horizontally
opt.wrap = false          -- don't wrap long lines

-- Splits
opt.splitright = true -- vertical splits open to the right
opt.splitbelow = true -- horizontal splits open below

-- Files
opt.swapfile = false -- no swap files (they're rarely useful with version control)
opt.backup = false   -- no backup files
opt.undofile = true  -- persist undo history across sessions

-- Clipboard
opt.clipboard = "unnamedplus" -- sync with system clipboard (yank = copy, paste = paste)

-- Completion
opt.completeopt = "menuone,noselect" -- show menu even for one match, don't auto-select

-- Misc
opt.updatetime = 250  -- ms before CursorHold fires (affects git signs, diagnostics)
opt.timeoutlen = 300  -- ms to wait for a mapped sequence to complete
opt.mouse = "a"       -- enable mouse in all modes
opt.showmode = false  -- don't show -- INSERT -- etc. (statusline handles this)
