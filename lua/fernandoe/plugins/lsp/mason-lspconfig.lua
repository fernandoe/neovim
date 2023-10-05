return {
    "https://github.com/williamboman/mason-lspconfig.nvim",
    dependencies = {
        "https://github.com/williamboman/mason.nvim"
    },
    opts = {
        ensure_installed = {
            "ansiblels",
            "bashls",
            "cssls",
            "docker_compose_language_service",
            "html",
            "jedi_language_server",
            "lua_ls",
            "marksman",  -- Markdown
            "tailwindcss",
            "terraformls",
            "tflint",
            "tsserver",
        },
        automatic_installation = true,
    },
}
