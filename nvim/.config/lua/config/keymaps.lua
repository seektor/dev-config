-- set leader key to space
vim.g.mapleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- increment
vim.keymap.set("n", "<leader>+", "<C-a>")
-- decrement
vim.keymap.set("n", "<leader>-", "<C-x>")

-- split window vertically
vim.keymap.set("n", "<leader>|", "<C-w>v")
-- split window horizontally
vim.keymap.set("n", "<leader>-", "<C-w>s")
-- make split windows equal width & height
vim.keymap.set("n", "<leader>se", "<C-w>=")
-- close current split window
vim.keymap.set("n", "<leader>sx", ":close<CR>")