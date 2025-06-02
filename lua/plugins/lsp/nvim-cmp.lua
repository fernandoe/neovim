return {
  "https://github.com/hrsh7th/nvim-cmp",
  dependencies = {
    "https://github.com/onsails/lspkind.nvim",
  },
  enabled = true,
  event = "InsertEnter",
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
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
      {
        { name = "buffer" },
      },
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol",
          maxwidth = {
            menu = 50,
            abbr = 50,
          },
          ellipsis_char = "...",
          show_labelDetails = true,

          before = function(entry, vim_item)
            return vim_item
          end,
        }),
      },
    })
  end,
}
