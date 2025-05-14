return {
    {
        "Mofiqul/vscode.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            local vscode = require('vscode')

            vscode.load()

            local c = require('vscode.colors').get_colors()

            vim.api.nvim_set_hl(0, "FloatBorder", vim.api.nvim_get_hl_by_name('TelescopePromptBorder', true))
            vim.api.nvim_set_hl(0, "NormalFloat", vim.api.nvim_get_hl_by_name('TelescopeNormal', true))
            vim.api.nvim_set_hl(0, "SpellBad", { fg = c.vscLightRed, sp = c.vscDarkYellow, undercurl = true })
            -- vim.api.nvim_set_hl(0, "SpellCap", { fg = c.vscYellow, undercurl = true })
            -- vim.api.nvim_set_hl(0, "SpellRare", { fg = c.vscYellow, undercurl = true })
            -- vim.api.nvim_set_hl(0, "SpellLocal", { fg = c.vscYellow, undercurl = true })
        end,
    }
}
