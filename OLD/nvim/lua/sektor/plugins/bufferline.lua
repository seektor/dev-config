return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    config = function()
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
                diagnostics = "nvim_lsp",
                diagnostics_indicator = nil,
                show_tab_indicators = true,
                show_close_icon = false,
            },
            highlights = {
                background = {
                    fg = "#898989",
                },
                close_button = {
                    fg = "#898989",
                },
                close_button_visible = {
                    fg = "#898989",
                },
                buffer = {
                    fg = "#898989",
                },
                buffer_visible = {
                    fg = "#898989",
                },
                modified = {
                    fg = { attribute = "fg", highlight = "Normal" },
                },
                modified_visible = {
                    fg = { attribute = "fg", highlight = "Normal" },
                },
                modified_selected = {
                    fg = { attribute = "fg", highlight = "Normal" },
                },
            }
        })

        local opts = { noremap = true, silent = true }

        -- Move to previous/next
        vim.keymap.set("n", "<leader>tn", "<Cmd>BufferLineCycleNext<CR>", opts)
        vim.keymap.set("n", "<leader>tp", "<Cmd>BufferLineCyclePrev<CR>", opts)

        -- Move previous/next
        vim.keymap.set("n", "<leader>tN", "<Cmd>BufferLineMoveNext<CR>", opts)
        vim.keymap.set("n", "<leader>tP", "<Cmd>BufferLineMovePrev<CR>", opts)

        -- Close
        vim.keymap.set("n", "<leader>tx", "<Cmd>bd<CR>", opts)
        -- Close to the right
        vim.keymap.set("n", "<leader>txn", "<Cmd>BufferLineCloseRight<CR>", opts)
        -- Close to the left
        vim.keymap.set("n", "<leader>txp", "<Cmd>BufferLineCloseLeft<CR>", opts)

        -- Goto
        vim.keymap.set("n", "<leader>t0", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
        vim.keymap.set("n", "<leader>t1", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
        vim.keymap.set("n", "<leader>t2", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
        vim.keymap.set("n", "<leader>t3", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
        vim.keymap.set("n", "<leader>t4", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
        vim.keymap.set("n", "<leader>t5", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
    end
}
