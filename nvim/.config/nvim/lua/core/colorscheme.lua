vim.o.background = "dark"

local vscode = require('vscode')

vscode.setup({
	italic_comments = true,
	disable_nvimtree_bg = true,
	color_overrides = {
		vscLineNumber = '#858585'
	}
})

vscode.load()
