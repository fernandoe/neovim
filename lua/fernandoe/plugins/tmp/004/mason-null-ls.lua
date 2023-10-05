return {
    "https://github.com/jay-babu/mason-null-ls.nvim",
    enable = true,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "https://github.com/williamboman/mason.nvim",
      "https://github.com/jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
        -- require("your.null-ls.config") -- require your null-ls config here (example below)
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local null_ls = require("null-ls")

        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics

        null_ls.setup({
            sources = {
                formatting.prettier,
                formatting.stylua,
                diagnostics.eslint_d
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                    group = augroup,
                    buffer = bufnr,
                    callback = function()
                        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                        -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                        vim.lsp.buf.formatting_sync()
                    end,
                })
            end
        end,
      })

    end,
}
