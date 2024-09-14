return {
    'nvim-telescope/telescope-ui-select.nvim',
    dependencies = {
        "nvim-telescope/telescope.nvim"
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local telescope = require("telescope")

        telescope.load_extension("ui-select")
    end
};
