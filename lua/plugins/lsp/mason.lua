return {
  "https://github.com/williamboman/mason.nvim",
  enabled = true,
  opts = {
    ensure_installed = {
      "autoflake",
      "black",
      "isort",
      "pyright",
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
