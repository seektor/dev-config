return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons",
    },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        theme = {
            normal = { fg = "#898989" },
            ellipsis = { fg = "#898989" },
            separator = { fg = "#898989" },
            modified = { fg = "#898989" },
            dirname = { fg = "#898989" }
        },
        symbols = {
            separator = ">"
        }
    },
}
