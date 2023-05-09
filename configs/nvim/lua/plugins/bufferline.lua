local buffer_status, bufferline = pcall(require, "bufferline")
if not buffer_status then
	return
end

local vc_status, vc = pcall(require, "vscode.colors")
if not vc_status then
	return
end

vim.opt.termguicolors = true

bufferline.setup({
	options = {
		show_close_icon = false,
		diagnostics = "nvim_lsp",
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
keymap.set("n", "<leader>tn", "<Cmd>BufferLineCyclePrev<CR>", opts)
keymap.set("n", "<leader>tN", "<Cmd>BufferLineCycleNext<CR>", opts)

-- Move previous/next
keymap.set("n", "<leader>tm", "<Cmd>BufferLineMovePrev<CR>", opts)
keymap.set("n", "<leader>tM", "<Cmd>BufferLineMoveNext<CR>", opts)

-- Close
keymap.set("n", "<leader>tc", "<Cmd>bd<CR>", opts)

-- Goto
keymap.set("n", "<leader>t1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap.set("n", "<leader>t2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap.set("n", "<leader>t3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap.set("n", "<leader>t4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
