return {
  "https://github.com/nvim-neotest/neotest",
  dependencies = {
    "https://github.com/nvim-neotest/nvim-nio",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/antoinemadec/FixCursorHold.nvim",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-neotest/neotest-jest",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-jest")({
          jestCommand = "npm test --",
          -- jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        }),
      },
    })
  end,
}
