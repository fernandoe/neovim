return {
  "https://github.com/williamboman/mason.nvim",
  enabled = true,
  opts = {
    ensure_installed = {
      "black",
      "isort",
      "pyright",
      "ruff",
      "stylua",
      "typescript-language-server",
    },
    ui = {
      icons = {
        enabled = true,
      },
    },
  },
}
