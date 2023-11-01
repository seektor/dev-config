local lspconfig = require("lspconfig")

local signs = {
    Error = " ",
    Warning = " ",
    Hint = " ",
    Information = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	-- LSP finder - Find the symbol's definition
	vim.keymap.set("n", "<leader>fd", "<cmd>Lspsaga finder def+ref<CR>")

	-- Code action
	vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

	-- Rename all occurrences of the hovered word
	vim.keymap.set("n", "<leader>r", "<cmd>Lspsaga rename<CR>")

	-- Peek definition
	vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>")

	-- Go to definition
	vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>")

	-- Peek type definition
	vim.keymap.set("n", "<leader>ptd", "<cmd>Lspsaga peek_type_definition<CR>")

	-- Go to type definition
	vim.keymap.set("n", "<leader>gtd", "<cmd>Lspsaga goto_type_definition<CR>")

	-- Show line diagnostics
	-- You can pass argument ++unfocus to
	-- unfocus the show_line_diagnostics floating window
	vim.keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

	-- Show buffer diagnostics
	vim.keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

	-- Show workspace diagnostics
	vim.keymap.set("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")

	-- Show cursor diagnostics
	vim.keymap.set("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

	-- Diagnostic jump
	-- You can use <C-o> to jump back to your previous location
	vim.keymap.set("n", "<leader>[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
	vim.keymap.set("n", "<leader>]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

	-- Diagnostic jump with filters such as only jumping to an error
	vim.keymap.set("n", "<leader>[E", function()
		require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
	end)
	vim.keymap.set("n", "<leader>]E", function()
		require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
	end)

	-- Toggle outline
	vim.keymap.set("n","<leader>o", "<cmd>Lspsaga outline<CR>")

	-- Hover Doc
	vim.keymap.set("n", "<leader>h", "<cmd>Lspsaga hover_doc<CR>")
end

-- enable autocompletion (assign to every lsp server config)
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configure servers
-- :h lspconfig-all

lspconfig["tsserver"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["eslint"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
