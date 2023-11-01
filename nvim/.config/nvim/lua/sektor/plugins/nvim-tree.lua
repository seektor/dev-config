return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- disable netrw at the very start of your init.lua (strongly advised)
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        -- change color for folders in tree to yellowish (vs-code like)
        vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderIcon', { fg = '#D6B682' })
        vim.api.nvim_set_hl(0, 'NvimTreeClosedFolderIcon', { fg = '#B9965D' })

        -- adjust background
        vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = require('vscode.colors').vscLeftDark })

        -- toggle file explorer
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
        vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })   -- refresh file explorer

        local tree = require('nvim-tree')

        tree.setup({
            hijack_cursor = true,
            diagnostics = {
                enable = true,
                show_on_dirs = true,
            },
            view = {
                width = 40,
                side = 'right',
            },
            renderer = {
                root_folder_label = function(path)
                    print(path)
                    return ".../" .. vim.fn.fnamemodify(path, ":t")
                end,
                indent_markers = {
                    enable = true,
                },
                icons = {
                    show = {
                        folder_arrow = false,
                    },
                    glyphs = {
                        git = {
                            unstaged = "M",
                            staged = "S",
                            unmerged = "UM",
                            renamed = "R",
                            deleted = "D",
                            untracked = "UT",
                            ignored = "I",
                        },
                    },
                },
            },
        })
    end
}
