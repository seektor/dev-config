return {
    "mfussenegger/nvim-dap",
    config = function()
        vim.keymap.set("n", "<leader>db", function() require('dap').toggle_breakpoint() end,
            { desc = "Toggle Breakpoint" })
        vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = "Start/Continue Debugging" })
        vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = "Step Over" })
        vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = "Step Into" })
        vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = "Step Out" })
        vim.keymap.set('n', '<F6>', function() require('dap').terminate() end, { desc = "Terminate Debugging" })

        vim.keymap.set('n', '<Leader>dh', function()
            require('dap.ui.widgets').hover()
        end)
    end
}
