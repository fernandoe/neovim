return {
  "https://github.com/ThePrimeagen/git-worktree.nvim",
  dependencies = {
    "https://github.com/nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telescope").load_extension("git_worktree")

    local git_worktree = require("git-worktree")
    local keymap = vim.keymap

    keymap.set(
      "n",
      "<leader>gw",
      "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
      { desc = "Git worktree" }
    )
    keymap.set(
      "n",
      "<leader>gwc",
      "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
      { desc = "Git worktree create" }
    )
  end,
}
