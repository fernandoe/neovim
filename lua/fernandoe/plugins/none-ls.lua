return {
    "https://github.com/nvimtools/none-ls.nvim",
    dependencies = {
        "https://github.com/nvim-lua/plenary.nvim",
        "https://github.com/nvimtools/none-ls-extras.nvim",
    },
    enabled = true,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {

                -- javascript
                null_ls.builtins.formatting.prettier.with({
                    args = {
                        "--tab-width", 
                        "4",
                        "--use-tabs",
                        "false",
                        "--single-quote",
                        "--stdin-filepath",
                        "$FILENAME",
                    },
                }),
                require("none-ls.diagnostics.eslint_d"),
                require("none-ls.code_actions.eslint_d"),

                -- lua
                null_ls.builtins.formatting.stylua,

                -- null_ls.builtins.formatting.prettier.with({
                --     filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
                --     command = "prettier",
                --     args = {
                --         "--stdin-filepath",
                --         "$FILENAME",
                --     },
                    -- adicionar um timeout maior
                -- }),

                -- null_ls .builtins.formatting.prettierd,
                -- null_ls.builtins.formatting.prettier.with({
                --     command = "prettier-eslint", -- Use 'prettier-eslint' ao invés de 'prettierd'
                --     args = {
                --         "--stdin",
                --         "--stdin-filepath",
                --         "$FILENAME"
                --     },
                --     extra_args = {"--log-level=silent"}, -- Evite logs desnecessários
                -- }),
                -- null_ls.builtins.formatting.prettier.with({
                --     disabled_filetypes = { "json" },
                -- }),
                -- -- null_ls.builtins.diagnostics.eslint_d,
                --
                -- null_ls.builtins.completion.spell,
                --
                -- null_ls.builtins.formatting.black,
                -- null_ls.builtins.formatting.isort,
                --
                -- null_ls.builtins.diagnostics.rubocop,
                -- null_ls.builtins.formatting.rubocop,

                -- null_ls.builtins.formatting.biome,
                -- null_ls.builtins.formatting.biome.with({
                --     filetypes = {
                --         "json",
                --     },
                --     args = {
                --         "check",
                --         "--apply",
                --         "--indent-style=space",
                --         "--indent-width=4",
                --         "--linter-enabled=true",
                --         "--formatter-enabled=true",
                --         "--organize-imports-enabled=true",
                --         "--skip-errors",
                --         "$FILENAME",
                --     },
                -- }),
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" })
    end,
}
