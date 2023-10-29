require('formatter').setup({
    -- https://github.com/mhartington/formatter.nvim/tree/master/lua/formatter/filetypes
    filetype = {
        typescript = {
            require("formatter.filetypes.typescript").prettier,
        },
        typescriptreact = {
            require("formatter.filetypes.typescript").prettier,
        },
    }
})

vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
    augroup END
]])