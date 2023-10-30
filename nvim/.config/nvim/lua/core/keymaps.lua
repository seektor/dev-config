vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>", {desc = "Exist insert mode with jk"})

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})

vim.keymap.set("n", "x", '"_x', {desc = "Delete single character without copying into register"})

vim.keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment number"})
vim.keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement number"})

vim.keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" }) 
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
