return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "ruff", "clangd" },
      automatic_installation = true,
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({ capabilities = capabilities })
        end,
      },
    })

    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "󰅚",
          [vim.diagnostic.severity.WARN]  = "󰀪",
          [vim.diagnostic.severity.INFO]  = "󰋽",
          [vim.diagnostic.severity.HINT]  = "󰌶",
        },
      },
    })

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover({ border = "rounded" }) end, { desc = "Hover docs" })
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    vim.keymap.set("n", "<leader>fd", "<cmd>Telescope lsp_references show_line=false<CR>", { desc = "LSP references" })
    vim.keymap.set("n", "<leader>fD", "<cmd>Telescope lsp_definitions<CR>", { desc = "LSP definitions" })
    vim.keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<CR>", { desc = "LSP implementations" })
    vim.keymap.set("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "LSP type definitions" })
    vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Buffer diagnostics" })
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostics" })
    vim.keymap.set("n", "<leader>hh", function() vim.lsp.buf.hover({ border = "rounded" }) end, { desc = "Hover docs" })
    vim.keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", { desc = "Restart LSP" })
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
  end,
}
