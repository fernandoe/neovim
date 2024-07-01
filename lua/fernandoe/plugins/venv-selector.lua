return {
  "https://github.com/linux-cultist/venv-selector.nvim",
  enabled = false,
  dependencies = {
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/mfussenegger/nvim-dap-python",
  },
  opts = {
    -- Your options go here
    -- name = "venv",
    -- auto_refresh = false
  },
  event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    {
      -- Keymap to open VenvSelector to pick a venv.
      "<leader>vs",
      "<cmd>:VenvSelect<cr>",
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      "<leader>vc",
      "<cmd>:VenvSelectCached<cr>",
    },
  },
}
