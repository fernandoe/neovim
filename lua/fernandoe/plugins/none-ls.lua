return {
    "https://github.com/nvimtools/none-ls.nvim",
    enabled = true,
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,

                null_ls.builtins.formatting.prettier.with({
                    disabled_filetypes = { "json" },
                }),
                -- null_ls.builtins.diagnostics.eslint_d,

                null_ls.builtins.completion.spell,

                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,

                null_ls.builtins.diagnostics.rubocop,
                null_ls.builtins.formatting.rubocop,

                null_ls.builtins.formatting.biome.with({
                    filetypes = {
                        "json",
                    },
                    args = {
                        "check",
                        "--apply",
                        "--indent-style=space",
                        "--indent-width=4",
                        "--linter-enabled=true",
                        "--formatter-enabled=true",
                        "--organize-imports-enabled=true",
                        "--skip-errors",
                        "$FILENAME",
                    },
                }),
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" })
    end,
}
