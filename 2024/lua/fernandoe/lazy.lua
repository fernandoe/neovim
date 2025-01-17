local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "fernandoe.plugins" },
  { import = "fernandoe.plugins.ai" },
  { import = "fernandoe.plugins.dap" },
  { import = "fernandoe.plugins.db" },
  { import = "fernandoe.plugins.file-system" },
  { import = "fernandoe.plugins.git" },
  { import = "fernandoe.plugins.lsp" },
  { import = "fernandoe.plugins.rest" },
  { import = "fernandoe.plugins.telescope" },
  { import = "fernandoe.plugins.tests" },
  { import = "fernandoe.plugins.themes" },
  { import = "fernandoe.plugins.ui" },
})

-- vim.cmd('colorscheme darcula')
-- vim.cmd([[colorscheme tokyonight-moon]])
-- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd([[colorscheme catppuccin-macchiato]])
