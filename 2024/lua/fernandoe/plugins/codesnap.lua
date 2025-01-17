return {
  "https://github.com/mistricky/codesnap.nvim",
  build = "make",
  --keys = {
  --  { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
  --  { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
  --},
  config = function()
    require("codesnap").setup({
      bg_theme = "grape",
      title = "",
      watermark = "",
    })
  end,
}
