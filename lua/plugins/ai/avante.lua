return {
  "https://github.com/yetone/avante.nvim",
  enabled = true,
  dependencies = {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/zbirenbaum/copilot.lua",
  },
  event = "VeryLazy",
  build = "make",
  opts = {
    provider = "copilot",
  },
}
