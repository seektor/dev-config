-- local comment = require('Comment')

-- comment.setup({
--   toggler = {
--     line = '<leader>cc',
--     block = '<leader>cb',
--   },
--   opleader = {
--     line = '<leader>cc',
--     block = '<leader>cb',
--   },
-- })

return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local comment = require("Comment")

    -- vim.keymap.set("n", "<leader>cc", "<C-a>", { desc = "Toggle linewise comment" })
    -- vim.keymap.set("n", "<leader>cc", "<C-a>", { desc = "Toggle blockwise comment" })

    comment.setup({})
  end,
}
