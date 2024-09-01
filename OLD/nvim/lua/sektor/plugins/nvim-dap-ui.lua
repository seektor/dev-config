return {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
        local dapui = require("dapui")
        dapui.setup()

        vim.keymap.set("n", "<leader>dt", "<cmd>lua require('dapui').toggle()<cr>", { desc = "Toggle dap ui" })
    end
}
