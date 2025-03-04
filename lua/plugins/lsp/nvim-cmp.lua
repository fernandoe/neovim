return {
  "https://github.com/hrsh7th/nvim-cmp",
  enabled = true,
  event = "InsertEnter",
  dependencies = {},
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = {
        -- Ativa o autocompletar
        ["<C-Space>"] = cmp.mapping.complete(),
        -- Confirma a seleção
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        -- Navega entre sugestões
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      },
      sources = {
        { name = "nvim_lsp" }, -- Fonte do LSP
        { name = "path" },
      },
    })
  end,
}
