return {
  "https://github.com/neovim/nvim-lspconfig",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local htmp_setup = {
      filetypes = { "html", "htmldjango" },
    }

    local lua_ls_setup = {
      on_attach = function() end,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
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
    }

    local lspconfig = require("lspconfig")

    lspconfig.gopls.setup({})

    lspconfig.tsserver.setup({})

    lspconfig.docker_compose_language_service.setup({})

    lspconfig.pyright.setup({})

    lspconfig.bashls.setup({})

    lspconfig.marksman.setup({})

    lspconfig.html.setup(htmp_setup)

    lspconfig.lua_ls.setup(lua_ls_setup)
  end,
}
