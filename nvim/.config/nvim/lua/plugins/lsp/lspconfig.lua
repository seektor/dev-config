local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

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

local keymap = vim.keymap

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	-- LSP finder - Find the symbol's definition
	-- If there is no definition, it will instead be hidden
	-- When you use an action in finder like "open vsplit",
	-- you can use <C-t> to jump back
	keymap.set("n", "<leader>fd", "<cmd>Lspsaga lsp_finder<CR>")

	-- Code action
	keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

	-- Rename all occurrences of the hovered word for the entire file
	keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>")

	-- Peek definition
	-- You can edit the file containing the definition in the floating window
	-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
	-- It also supports tagstack
	-- Use <C-t> to jump back
	keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>")

	-- Go to definition
	keymap.set("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>")

	-- Peek type definition
	-- You can edit the file containing the type definition in the floating window
	-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
	-- It also supports tagstack
	-- Use <C-t> to jump back
	-- keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")

	-- Go to type definition
	-- keymap.set("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>")

	-- Show line diagnostics
	-- You can pass argument ++unfocus to
	-- unfocus the show_line_diagnostics floating window
	keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

	-- Show buffer diagnostics
	keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

	-- Show workspace diagnostics
	keymap.set("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")

	-- Show cursor diagnostics
	keymap.set("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

	-- Diagnostic jump
	-- You can use <C-o> to jump back to your previous location
	keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
	keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

	-- Diagnostic jump with filters such as only jumping to an error
	keymap.set("n", "[E", function()
		require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
	end)
	keymap.set("n", "]E", function()
		require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
	end)

	-- Toggle outline
	keymap.set("n","<leader>o", "<cmd>Lspsaga outline<CR>")

	-- Hover Doc
	-- If there is no hover doc,
	-- there will be a notification stating that
	-- there is no information available.
	-- To disable it just use ":Lspsaga hover_doc ++quiet"
	-- Pressing the key twice will enter the hover window
	keymap.set("n", "<leader>h", "<cmd>Lspsaga hover_doc<CR>")

	-- typescript specific keymaps (e.g. rename file and update imports)
	--   if client.name == "tsserver" then
	--     keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
	--     keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- organize imports (not in youtube nvim video)
	--     keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- remove unused variables (not in youtube nvim video)
	--   end
end

-- enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

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

local rust_tools_status, rust_tools = pcall(require, "rust-tools")
if not rust_tools_status then
	return
end

rust_tools.setup({
	server = {
		on_attach = on_attach,
	},
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})