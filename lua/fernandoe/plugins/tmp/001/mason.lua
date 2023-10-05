return {
    "https://github.com/williamboman/mason.nvim",
    dependencies = {
        "https://github.com/neovim/nvim-lspconfig",
        "https://github.com/mfussenegger/nvim-dap",
        "https://github.com/jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
            opts = {
                ensure_installed = {
                    "typescript-language-server",
                }
            },
        })
    end,
}
