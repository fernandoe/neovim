return {
  "https://github.com/ravitemer/mcphub.nvim",
  dependencies = {
    "https://github.com/nvim-lua/plenary.nvim",
  },
  enabled = true,
  build = "bundled_build.lua", -- Bundles `mcp-hub` binary along with the neovim plugin
  -- build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
  config = function()
    require("mcphub").setup({
      use_bundled_binary = true,
    })
  end,
}
