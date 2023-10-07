-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment
keymap.set("n", "<leader>+", "<C-a>")
-- decrement
keymap.set("n", "<leader>-", "<C-x>")

-- split window vertically
keymap.set("n", "<leader>|", "<C-w>v")
-- split window horizontally
keymap.set("n", "<leader>-", "<C-w>s")
-- make split windows equal width & height
keymap.set("n", "<leader>se", "<C-w>=")
-- close current split window
keymap.set("n", "<leader>sx", ":close<CR>")