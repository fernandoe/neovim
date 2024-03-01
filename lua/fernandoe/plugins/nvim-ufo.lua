return {
    "https://github.com/kevinhwang91/nvim-ufo",
    dependencies = {
        "https://github.com/kevinhwang91/promise-async",
    },
    event = "BufReadPost",
    enabled = true,
    config = function()
        vim.o.fillchars = [[eob: ,fold: ,foldopen:▼,foldsep: ,foldclose:⏵]]

        --- @diagnostic disable: unused-local
        require("ufo").setup({
            provider_selector = function(bufnr, filetype, buftype)
                return { "treesitter", "indent" }
            end,
        })
    end,
}
