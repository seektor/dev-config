return {
    "numToStr/Comment.nvim",
    event = "InsertEnter",
    config = function()
        local comment = require("Comment")

        comment.setup({
            -- toggler = {
            --     line = '<leader>cc',
            --     block = '<leader>cb',
            -- },
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                line = '<leader>cc',
                block = '<leader>cb',
            },
        })
    end,
}
