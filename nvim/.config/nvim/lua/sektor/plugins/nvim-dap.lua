return {
    "mfussenegger/nvim-dap",
    config = function()
        vim.keymap.set(
            "n",
            "<leader>db",
            "<cmd>DapToggleBreakpoint<cr>",
            { desc = "Toggle Breakpoint" }
        )
    end
}
