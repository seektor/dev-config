vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exist insert mode with jk" })

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register" })

vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>w+", "<C-w>+", { desc = "Increase window height" })
vim.keymap.set("n", "<leader>w-", "<C-w>-", { desc = "Decrease window height" })
vim.keymap.set("n", "<leader>w>", "<C-w>>", { desc = "Increase window width" })
vim.keymap.set("n", "<leader>w<", "<C-w><", { desc = "Decrease window width" })
vim.keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Equalize windows width and height" })

vim.keymap.set("n", "<leader>tc", "<cmd>tabnew<CR>", { desc = "Create new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bx", "<cmd>bd<CR>", { desc = "Close current buffer" })
