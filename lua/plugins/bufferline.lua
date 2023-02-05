local buffer_status, bufferline = pcall(require, "bufferline")
if not buffer_status then
  return
end

local vc_status, vc = pcall(require, 'vscode.colors')
if not vc_status then
    return
  end

local c = vc.get_colors()
local white_color = "#FFFFFF"

vim.opt.termguicolors = true

bufferline.setup({
    options = {
        show_close_icon = false,
    },
    highlights = {
        separator = {
            fg = c.vscTabOther,
            bg = c.vscTabOther,
        },
        separator_selected = {
            fg = c.vscTabCurrent,
            bg = c.vscTabCurrent,
        },
        background = {
            fg = c.vscGray,
            bg = c.vscTabOther,
        },
        close_button = {
            fg = c.vscGray,
            bg = c.vscTabOther,
        },
        close_button_visible = {
            fg = c.vscGray,
            bg = c.vscTabOther,
        },
        close_button_selected = {
            fg = white_color,
            bg = c.vscTabCurrent,
        },     
        buffer_visible = {
            fg = c.vscGray,
            bg = c.vscTabOther,
        },
        buffer_selected = {
            fg = white_color,
            bg = c.vscTabCurrent,
        },
    },
})