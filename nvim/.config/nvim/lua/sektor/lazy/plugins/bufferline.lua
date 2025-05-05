return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {
            mode = "tabs",
            always_show_bufferline = false,
            show_buffer_close_icons = false,
        },
        highlights = {
            background = {
                fg = '#585b70'
            },
            buffer_visible = {
                fg = "#585b70",
            },
        }
    }
}
