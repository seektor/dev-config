return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover,
            {
                border = "rounded", -- "shadow" , "none", "rounded"
                -- width = 100,
            }
        )
        vim.cmd("hi NormalFloat guibg=Normal")

        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            opts.desc = "Show LSP references"
            vim.keymap.set("n", "<leader>fd", "<cmd>Telescope lsp_references show_line=false<CR>", opts)

            opts.desc = "Go to declaration"
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, opts)

            opts.desc = "Show LSP definitions"
            vim.keymap.set("n", "<leader>fD", "<cmd>Telescope lsp_definitions<CR>", opts)

            opts.desc = "Show LSP implementations"
            vim.keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<CR>", opts)

            opts.desc = "Show LSP type definitions"
            vim.keymap.set("n", "<leader>ft", "<cmd>Telescope lsp_type_definitions<CR>", opts)

            opts.desc = "See available code actions"
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

            opts.desc = "Smart rename"
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

            opts.desc = "Show buffer diagnostics"
            vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

            opts.desc = "Show line diagnostics"
            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

            opts.desc = "Go to previous diagnostic"
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

            opts.desc = "Go to next diagnostic"
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

            opts.desc = "Show documentation for what is under cursor"
            vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)

            opts.desc = "Restart LSP"
            vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
        end

        -- enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        -- (not in youtube nvim video)
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["cssls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["tailwindcss"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "python" }
        })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = { -- custom settings for lua
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end,
}
