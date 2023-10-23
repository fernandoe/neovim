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

    require("lspconfig").tsserver.setup({})

    require("lspconfig").docker_compose_language_service.setup({})

    require("lspconfig").jedi_language_server.setup({})

    require("lspconfig").bashls.setup({})

    require("lspconfig").marksman.setup({})

    require("lspconfig").html.setup({
      filetypes = { "html", "htmldjango" },
    })
  end,
}
