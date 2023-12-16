return {
  "https://github.com/jonahgoldwastaken/copilot-status.nvim",
  dependencies = {
    "https://github.com/github/copilot.vim",
  },
  lazy = true,
  event = "BufReadPost",
  opts = {
    icons = {
      idle = "",
      error = "",
      offline = "",
      warning = "",
      loading = "...",
    },
    debug = true,
  },
}
