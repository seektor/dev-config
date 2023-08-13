vim.opt.termguicolors = true

local bufferline = require('bufferline')

bufferline.setup({
    options = {
        buffer_close_icon = "",
        close_command = "bdelete %d",
        close_icon = "",
        indicator = {
          style = "icon",
          icon = " ",
        },
        left_trunc_marker = "",
        modified_icon = "M",
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
        right_mouse_command = "bdelete! %d",
        right_trunc_marker = "",
        show_close_icon = false,
        show_tab_indicators = true,
    },
    highlights = {
        fill = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        buffer_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        separator = {
            fg = { attribute = "bg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        separator_selected = {
            fg = { attribute = "fg", highlight = "Special" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
        close_button_selected = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
        close_button_visible = {
            fg = { attribute = "fg", highlight = "Normal" },
            bg = { attribute = "bg", highlight = "Normal" },
        },
    },
})

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
keymap.set("n", "<leader>tn", "<Cmd>BufferLineCycleNext<CR>", opts)
keymap.set("n", "<leader>tp", "<Cmd>BufferLineCyclePrev<CR>", opts)

-- Move previous/next
keymap.set("n", "<leader>tm", "<Cmd>BufferLineMoveNext<CR>", opts)
keymap.set("n", "<leader>to", "<Cmd>BufferLineMovePrev<CR>", opts)

-- Close
keymap.set("n", "<leader>tx", "<Cmd>bd<CR>", opts)
-- Close to the right
keymap.set("n", "<leader>tM", "<Cmd>BufferLineCloseRight<CR>", opts)
-- Close to the left
keymap.set("n", "<leader>tO", "<Cmd>BufferLineCloseLeft<CR>", opts)

-- Goto
keymap.set("n", "<leader>t0", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap.set("n", "<leader>t1", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap.set("n", "<leader>t2", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap.set("n", "<leader>t3", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap.set("n", "<leader>t4", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap.set("n", "<leader>t5", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)