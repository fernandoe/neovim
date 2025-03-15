return {
  "https://github.com/neovim/nvim-lspconfig",
  dependencies = {
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/j-hui/fidget.nvim",
  },
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      on_attach = function() end,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    lspconfig.ts_ls.setup({
      capabilities = capabilities,
      -- Identifica o diretório raiz do projeto
      -- root_dir = lspconfig.util.root_pattern("package.json", ".git"),
    })

    lspconfig.yamlls.setup({
      settings = {
        yaml = {
          schemas = {
            -- Adicione um schema personalizado para Serverless Framework, se disponível
            ["https://raw.githubusercontent.com/softprops/serverless-yml-schema/refs/heads/master/serverless-schema.json"] = "serverless.yml",
          },
          validate = true,
          completion = true,
          hover = true,
        },
      },
    })
  end,
}
