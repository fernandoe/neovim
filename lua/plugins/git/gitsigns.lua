return {
  "https://github.com/lewis6991/gitsigns.nvim",
  keys = {
    -- Stage de um hunk
    { "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>",   mode = { "n", "v" }, desc = "Stage hunk" },
    -- Atalho para mostrar o diff do arquivo atual
    { "<leader>gd", "<cmd>Gitsigns diffthis<CR>",     mode = "n",          desc = "Show diff of current file" },
    -- Navegar entre hunks

    { "]h",         "<cmd>Gitsigns next_hunk<CR>",    mode = "n",          desc = "Go to next hunk" },
    { "[h",         "<cmd>Gitsigns prev_hunk<CR>",    mode = "n",          desc = "Go to previous hunk" },
    -- Visualizar hunk atual
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", mode = "n",          desc = "Preview hunk" },
    -- Reset de um hunk
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>",   mode = { "n", "v" }, desc = "Reset hunk" },
  },
  opts = {},
}
