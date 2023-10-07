local diffview = require("diffview")

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>do", "<Cmd>DiffviewOpen<CR>", opts)
keymap.set("n", "<leader>dfo", "<Cmd>DiffviewFileHistory %<CR>", opts)
keymap.set("n", "<leader>dc", "<Cmd>DiffviewClose<CR>", opts)

diffview.setup()