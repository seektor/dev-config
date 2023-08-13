local saga = require('lspsaga')
local colors = require('vscode.colors').get_colors();

vim.api.nvim_set_hl(0, "SagaWinbarSep", { fg = colors.vscLineNumber })
vim.api.nvim_set_hl(0, "SagaFileName", { fg = colors.vscLineNumber })
vim.api.nvim_set_hl(0, "SagaFolderName", { fg = colors.vscLineNumber })

saga.setup({
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	symbol_in_winbar = {
		separator = " > ",
	},
	lightbulb = {
		virtual_text = false,
	},
	finder = {
		keys = {
		  jump_to = 'p',
		  expand_or_jump = '<CR>',
		  vsplit = '|',
		  split = '-',
		  tabe = 't',
		  tabnew = 'r',
		  quit = { 'q', '<ESC>' },
		  close_in_preview = '<ESC>',
		},
	  },
})
