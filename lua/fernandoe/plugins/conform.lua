-- Format, Formatting, Linting, and Fixing
return {
    "https://github.com/stevearc/conform.nvim",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    enabled = false,
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                css = { "prettier" },
                html = { "prettier" },
                javascript = { "prettier" },
                javascriptreact = { "prettier" },
                -- json = { "prettier" },
                lua = { "stylua" },
                markdown = { "prettier" },
                python = { "isort", "black" },
                typescript = { "prettier" },
                typescriptreact = { "prettier" },
                yaml = { "prettier" },
            },
            -- format_on_save = {
            --     lsp_fallback = true,
            --     async = true,
            --     timeout_ms = 500,
            -- },
        })

        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                lsp_fallback = true,
                async = true,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
