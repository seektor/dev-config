return {
    "sindrets/diffview.nvim",
    version = "*",
    config = function()
        local diffview = require("diffview")

        diffview.setup({
        })

        local opts = { noremap = true, silent = true }

        opts.desc = "Open Diffview"
        vim.keymap.set("n", "<leader>do", "<Cmd>DiffviewOpen<CR>", opts)
        opts.desc = "Open Diffview file history"
        vim.keymap.set("n", "<leader>dfo", "<Cmd>DiffviewFileHistory %<CR>", opts)
        opts.desc = "Close Diffview"
        vim.keymap.set("n", "<leader>dx", "<Cmd>DiffviewClose<CR>", opts)
    end,
}
