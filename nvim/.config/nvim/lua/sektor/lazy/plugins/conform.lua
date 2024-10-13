--[[
    Formatter plugin
    https://github.com/stevearc/conform.nvim
--]]

return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                rust = { "rustfmt", lsp_format = "fallback" },
                go = { "gofmt" },
                typescript = { { 'prettierd', "prettier" } },
                typescriptreact = { { 'prettierd', "prettier" } },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
