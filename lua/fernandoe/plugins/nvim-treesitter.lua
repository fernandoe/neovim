return {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local treesiter = require("nvim-treesitter.configs")

        treesiter.setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "bash",
                "css",
                "dockerfile",
                "gitignore",
                "html",
                "http",
                "http",
                "javascript",
                "json5",
                "lua",
                "markdown",
                "query",
                "sql",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            },
            auto_install = true,
        })
    end,
}
