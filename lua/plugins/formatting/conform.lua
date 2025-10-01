return {
  "https://github.com/stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "<leader>mp",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 2000,
        })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  config = function()
    vim.g.conform_log_level = "debug"

    local conform = require("conform")
    conform.setup({
      -- https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "autoflake", "isort", "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        json = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 2000,
      }
    })
  end,
}
