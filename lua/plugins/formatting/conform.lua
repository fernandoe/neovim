return {
  "https://github.com/stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "<leader>mp",
      function()
        require("conform").format({
          async = false,
          lsp_fallback = true,
          timeout_ms = 1000,
        })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
      },
    })
  end,
}
