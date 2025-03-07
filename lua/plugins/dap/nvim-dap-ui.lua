return {
  "https://github.com/rcarriga/nvim-dap-ui",
  dependencies = {
    "https://github.com/mfussenegger/nvim-dap",
    "https://github.com/nvim-neotest/nvim-nio",
  },
  keys = {
    { "<leader>ui", function() require("dapui").toggle() end, desc = "Toggle DAP UI" },
  },
  enabled = true,
  event = "VeryLazy",
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup({})

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
}
