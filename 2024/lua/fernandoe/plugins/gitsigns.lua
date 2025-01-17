return {
  "https://github.com/lewis6991/gitsigns.nvim",
  enabled = true,
  config = function()
    require("gitsigns").setup()
    vim.keymap.set("n", "<leader>gp", "<CMD>Gitsigns preview_hunk<CR>", { desc = "Show git diff" })
  end,
}
