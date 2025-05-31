return {
  "https://github.com/nvim-pack/nvim-spectre",
  enabled = true,
  keys = {
    { "<leader>S", "<cmd>:Spectre<cr>", desc = "Search and Replace" },
    { "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", desc = "Search current word" },
    { "<leader>sf", "<cmd>lua require('spectre').open_file_search({select_word=true})<cr>", desc = "Search in file" },
  },
  opts = {},
}
