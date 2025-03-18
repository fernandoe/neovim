return {
  "https://github.com/nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local treesiter = require("nvim-treesitter.configs")

    treesiter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = false },
      ensure_installed = {
        "bash",
        "css",
        "dockerfile",
        "gitignore",
        "html",
        "http",
        "javascript",
        "json5",
        "lua",
        "markdown",
        "query",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Enter>", -- set to 'false' to disable one of the mappings
          node_incremental = "<Enter>",
          scope_incremental = false,
          node_decremental = "<Backspace>",
        },
      },
    })
  end,
}
