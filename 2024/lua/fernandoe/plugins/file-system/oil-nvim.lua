return {
  "https://github.com/stevearc/oil.nvim",
  enabled = false,
  dependencies = {
    "https://github.com/nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("oil").setup({})
    vim.keymap.set("n", "<leader>-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
  end,
}
