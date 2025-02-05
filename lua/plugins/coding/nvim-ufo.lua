return {
  "https://github.com/kevinhwang91/nvim-ufo",
  dependencies = {
    "https://github.com/kevinhwang91/promise-async",
  },
  event = "BufReadPost",
  enabled = true,
  config = function()
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })
  end,
}
