return {
  "https://github.com/neovim/nvim-lspconfig",
  dependencies = {
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/nvim-cmp",
  },
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")

    lspconfig.ts_ls.setup({
      capabilities = capabilities,
      -- Identifica o diretório raiz do projeto
      -- root_dir = lspconfig.util.root_pattern("package.json", ".git"),
    })
  end,
}
