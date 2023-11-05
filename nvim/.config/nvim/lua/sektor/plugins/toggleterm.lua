return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")

        toggleterm.setup({
            shade_terminals = false,
        })

        vim.keymap.set("n", "<leader>tr", ":ToggleTerm<CR>")

        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }

            opts.desc = "Escape terminal"
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
            vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)

            opts.desc = "Navigate left from terminal"
            vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
            opts.desc = "Navigate down from terminal"
            vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
            opts.desc = "Navigate up from terminal"
            vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
            opts.desc = "Navigate right from terminal"
            vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
    end,
}
