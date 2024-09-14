return {
    {
        "Mofiqul/vscode.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            local vscode = require('vscode')

            vscode.load()

            vim.api.nvim_set_hl(0, "FloatBorder", vim.api.nvim_get_hl_by_name('TelescopePromptBorder', true))
            vim.api.nvim_set_hl(0, "NormalFloat", vim.api.nvim_get_hl_by_name('TelescopeNormal', true))
        end,
    }
}
