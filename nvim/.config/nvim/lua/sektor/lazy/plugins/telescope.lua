return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require('telescope.builtin')

        telescope.setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
        vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
        vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Lists open buffers in current neovim instance" })
        vim.keymap.set('n', '<leader>fgs', builtin.git_status, { desc = "Lists open git status" })
    end,
}
