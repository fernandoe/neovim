return {
    "https://github.com/kevinhwang91/nvim-ufo",
    dependencies = {
        "https://github.com/kevinhwang91/promise-async",
        "https://github.com/luukvbaal/statuscol.nvim",
    },
    event = "BufReadPost",
    enabled = false,
    config = function()
        require("statuscol").setup({})

        require("ufo").setup({})
    end,
    -- config = function()
    -- vim.o.fillchars = [[eob: ,fold: ,foldopen:▼,foldsep: ,foldclose:⏵]]
    -- -- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
    --
    -- -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    -- vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
    -- vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
    --
    -- -- Option 2: nvim lsp as LSP client
    -- -- Tell the server the capability of foldingRange,
    -- -- Neovim hasn't added foldingRange to default capabilities, users must add it manually
    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    -- capabilities.textDocument.foldingRange = {
    --     dynamicRegistration = false,
    --     lineFoldingOnly = true,
    -- }
    -- local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
    -- for _, ls in ipairs(language_servers) do
    --     require("lspconfig")[ls].setup({
    --         capabilities = capabilities,
    --         -- you can add other fields for setting up lsp server in this table
    --     })
    -- end
    -- require("ufo").setup({})

    -- require("ufo").setup({
    --     provider_selector = function(_bufnr, _filetype, _buftype)
    --         return { "treesitter", "indent" }
    --     end,
    -- })
    -- end,
}
