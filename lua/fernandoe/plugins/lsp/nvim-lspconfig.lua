return {
    "https://github.com/neovim/nvim-lspconfig",
    enabled = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local htmp_setup = {
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
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
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

        local lspconfig = require("lspconfig")

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
        lspconfig.tsserver.setup({
            commands = {
                OrganizeImports = {
                    organize_imports,
                    description = "Organize Imports",
                },
            },
        })
        --
        -- lspconfig.docker_compose_language_service.setup({})
        --
        -- lspconfig.pyright.setup({})
        --
        -- lspconfig.bashls.setup({})
        --
        -- lspconfig.marksman.setup({})
        --
        lspconfig.html.setup(htmp_setup)
        --
        -- lspconfig.lua_ls.setup(lua_ls_setup)
    end,
}
