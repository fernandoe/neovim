return {
  "https://github.com/neovim/nvim-lspconfig",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("lspconfig").lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })

    local lspconfig = require("lspconfig")

    lspconfig.tsserver.setup({})

    lspconfig.docker_compose_language_service.setup({})

    lspconfig.pyright.setup({})

    lspconfig.bashls.setup({})

    lspconfig.marksman.setup({})

    lspconfig.html.setup({
      filetypes = { "html", "htmldjango" },
    })
  end,
}
