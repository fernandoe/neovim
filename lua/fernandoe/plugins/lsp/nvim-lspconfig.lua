return {
  "https://github.com/neovim/nvim-lspconfig",
  dependencies = {
    "https://github.com/hrsh7th/cmp-nvim-lsp",
  },
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local htmp_setup = {
      capabilities = capabilities,
      filetypes = { "html", "htmldjango", "ejs" },
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
              [vim.fn.expand "$VIMRUNTIME/lua"] = true,
              [vim.fn.stdpath "config" .. "/lua"] = true,
            },
          },
        },
      },
    }

    local function organize_imports()
      local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
        title = "",
      }
      vim.lsp.buf.execute_command(params)
    end

    local lspconfig = require "lspconfig"

    -- lspconfig.eslint.setup({
    --   on_attach = function(client, bufnr)
    --     vim.api.nvim_create_autocmd("BufWritePre", {
    --       buffer = bufnr,
    --       command = "EslintFixAll",
    --     })
    --   end,
    -- })

    -- lspconfig.gopls.setup({})
    --
    lspconfig.ts_ls.setup {
      commands = {
        OrganizeImports = {
          organize_imports,
          description = "Organize Imports",
        },
      },
    }
    --
    -- lspconfig.docker_compose_language_service.setup({})
    --
    lspconfig.pyright.setup {}
    --
    lspconfig.bashls.setup({
      filetypes = { "sh", "zsh", "bash" },
    })
    --
    -- lspconfig.marksman.setup({})
    --
    lspconfig.html.setup(htmp_setup)
    -- lspconfig.html.setup({})
    --
    lspconfig.lua_ls.setup(lua_ls_setup)

    -- yaml files
    lspconfig.yamlls.setup {
      settings = {
        yaml = {
          format = {
            enable = true,
          },
          schemaStore = {
            enable = true,
          },
        },
      },
    }

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
  end,
}
