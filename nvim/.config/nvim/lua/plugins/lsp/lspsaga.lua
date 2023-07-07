local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

local vc_status, vc = pcall(require, "vscode.colors")
if not vc_status then
	return
end

vim.api.nvim_set_hl(0, "SagaWinbarSep", { fg = vc.vscLineNumber })
vim.api.nvim_set_hl(0, "SagaNormal", { bg = vc.vscLeftDark })

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
