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
-- vim.api.nvim_set_hl(0, 'SagaBorder', { fg = c.vscLeftDark})

saga.setup({
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	ui = {
		-- border = 'single',
		colors = {
			normal_bg = "#ff0000",
		},
	},
	symbol_in_winbar = {
		-- enable = true,
		separator = " > ",
		-- color_mode = true,
	},
	lightbulb = {
		virtual_text = false,
	},
})
