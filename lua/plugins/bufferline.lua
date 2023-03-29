local buffer_status, bufferline = pcall(require, "bufferline")
if not buffer_status then
  return
end

local vc_status, vc = pcall(require, 'vscode.colors')
if not vc_status then
    return
  end

vim.opt.termguicolors = true

bufferline.setup({
    options = {
        show_close_icon = false,
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
        modified = {
            bg = { attribute = "bg", highlight = "StatusLine" },
        },
    },
})

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
keymap.set('n', 'T,', '<Cmd>BufferLineCyclePrev<CR>', opts)
keymap.set('n', 'T.', '<Cmd>BufferLineCycleNext<CR>', opts)

-- Move previous/next
keymap.set('n', 'T<', '<Cmd>BufferLineMovePrev<CR>', opts)
keymap.set('n', 'T>', '<Cmd>BufferLineMoveNext<CR>', opts)

-- Close
keymap.set('n', 'Tc', '<Cmd>BufferClose<CR>', opts)

-- Goto
keymap.set('n', 'T1', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', 'T2', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', 'T3', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', 'T4', '<Cmd>BufferGoto 4<CR>', opts)