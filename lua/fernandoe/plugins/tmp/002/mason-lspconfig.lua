return {
    "https://github.com/williamboman/mason-lspconfig.nvim",
    dependencies = {
        "https://github.com/williamboman/mason.nvim"
    },
    opts = {
        ensure_installed = {
            "typescript-language-server"
        }
    },
}
