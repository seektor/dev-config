return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local comment = require("Comment")

        comment.setup({
            toggler = {
                line = '<leader>cc',
                block = '<leader>cb',
            },
            opleader = {
                line = '<leader>cc',
                block = '<leader>cb',
            },
        })
    end,
}
