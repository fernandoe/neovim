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
                "javascript",
                "json",
                "lua",
                "markdown",
                "query",
                "tsx",
                "typescript",
                "vim",
                "yaml",
            },
            auto_install = true,
        })
    end,
}
