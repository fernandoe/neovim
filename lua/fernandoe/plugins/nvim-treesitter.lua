return {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
        ensure_installed = {
            "json",
            "javascript",
            "typescript",
            "tsx",
            "yaml",
            "html",
            "css",
            "markdown",
            "bash",
            "lua",
            "vim",
            "dockerfile",
            "gitignore",
        },
        auto_install = true,
    },
}
