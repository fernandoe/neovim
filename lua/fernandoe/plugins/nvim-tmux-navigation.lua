return {
  "https://github.com/alexghergh/nvim-tmux-navigation",
  config = function()
    local plugin = require("nvim-tmux-navigation")
    plugin.setup({})

    vim.keymap.set("n", "<C-Left>", plugin.NvimTmuxNavigateLeft)
    vim.keymap.set("n", "<C-Down>", plugin.NvimTmuxNavigateDown)
    vim.keymap.set("n", "<C-Up>", plugin.NvimTmuxNavigateUp)
    vim.keymap.set("n", "<C-Right>", plugin.NvimTmuxNavigateRight)
    vim.keymap.set("n", "<C-\\>", plugin.NvimTmuxNavigateLastActive)
    vim.keymap.set("n", "<C-Space>", plugin.NvimTmuxNavigateNext)
  end,
}

