return {
  "https://github.com/nvim-telescope/telescope.nvim",
  dependencies = {
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/xiyaowong/telescope-emoji.nvim",
    { "https://github.com/nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", desc = "Find files" },
    { "<leader>fs", "<cmd>Telescope live_grep<cr>", desc = "Find string in files" },
    { "<leader>fl", "<cmd>Telescope resume<cr>", desc = "Open last find window" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Open Neovim help tags" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Lists normal mode keymappings" },
    { "<leader><leader>", "<cmd>Telescope buffers<cr>", desc = "Lists open buffers" },
  },
  config = function()
    local telescope = require("telescope")

    telescope.load_extension("emoji")
    telescope.load_extension("fzf")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          ".DS_Store",
          "^.git/",
          "^node_modules/",
          "__pycache__",
        },
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },
    })

    local keymap = vim.keymap
    -- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", { desc = "Find files" })
    -- keymap.set("n", "<c-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
    -- keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Find files in git" })
    -- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in files" })
    keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Find string in files" })
    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
  end,
}
