return {
  "https://github.com/nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  dependencies = {
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/MunifTanjim/nui.nvim",
  },
  keys = {
		{ "<leader>fe", "<cmd>:Neotree filesystem toggle<cr>", desc = "File explorer (NeoTree)" },
		{ "<leader>fE", "<cmd>:Neotree filesystem reveal toggle<cr>", desc = "File explorer (NeoTree)" },
		{ "<leader>ge", "<cmd>:Neotree git_status toggle<cr>", desc = "Git explorer (NeoTree)" },
  },
}
