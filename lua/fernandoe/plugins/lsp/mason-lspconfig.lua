return {
  "https://github.com/williamboman/mason-lspconfig.nvim",
  event = "BufReadPre",
  dependencies = {
    "https://github.com/williamboman/mason.nvim",
  },
  opts = {
    ensure_installed = {
      "ansiblels",
      "bashls",
      "biome",
      "cssls",
      "docker_compose_language_service",
      "gopls",
      "html",
      "lua_ls",
      "marksman", -- Markdown
      "pyright",
      "rubocop",
      "tailwindcss",
      "terraformls",
      "tflint",
      "tsserver",
      "yamlls", -- yaml files
    },
    automatic_installation = true,
  },
}
