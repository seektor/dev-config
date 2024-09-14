return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            ensure_installed = {
                "json",
                "javascript",
                "html",
                "css",
                "markdown",
                "lua",
                "vim",
                "gitignore",
                "python",
                "rust",
            },
        })
    end,
}
