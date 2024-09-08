return {
    {
        "Mofiqul/vscode.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            local vscode = require('vscode')
            vscode.load()
        end,
    }
}
