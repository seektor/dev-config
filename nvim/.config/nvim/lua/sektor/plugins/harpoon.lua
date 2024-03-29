return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.keymap.set(
            "n",
            "<leader>hm",
            "<cmd>lua require('harpoon.mark').add_file()<cr>",
            { desc = "Mark file with harpoon" }
        )
        vim.keymap.set(
            "n",
            "<leader>hx",
            "<cmd>lua require('harpoon.mark').rm_file()<cr>",
            { desc = "Remove marked file with harpoon" }
        )
        vim.keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>",
            { desc = "Go to next harpoon mark" })
        vim.keymap.set(
            "n",
            "<leader>hp",
            "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
            { desc = "Go to previous harpoon mark" }
        )
    end,
}
