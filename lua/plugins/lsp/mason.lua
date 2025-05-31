return {
  "https://github.com/williamboman/mason.nvim",
  enabled = true,
  opts = {
    ensure_installed = {
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
