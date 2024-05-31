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
  { import = "fernandoe.plugins.dap" },
  { import = "fernandoe.plugins.db" },
  { import = "fernandoe.plugins.file-system" },
  { import = "fernandoe.plugins.lsp" },
  { import = "fernandoe.plugins.themes" },
})

-- vim.cmd('colorscheme darcula')
-- vim.cmd([[colorscheme tokyonight-moon]])
vim.cmd([[colorscheme catppuccin]]) -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
