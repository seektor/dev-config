vim.o.background = "dark"

local status, colorschema = pcall(require, "vscode")
if not status then
	print("Colorscheme not found!")
	return
end

colorschema.setup({
	italic_comments = true,
	disable_nvimtree_bg = true,
})

colorschema.load()
