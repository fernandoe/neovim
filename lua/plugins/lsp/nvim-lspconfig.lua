return {
  "https://github.com/neovim/nvim-lspconfig",
  dependencies = {
    "https://github.com/hrsh7th/cmp-nvim-lsp",
  },
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
  end,
}
