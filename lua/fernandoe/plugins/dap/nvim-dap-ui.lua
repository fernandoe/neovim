return {
  "https://github.com/rcarriga/nvim-dap-ui",
  enabled = true,
  dependencies = {
    "https://github.com/mfussenegger/nvim-dap",
    "https://github.com/nvim-neotest/nvim-nio",
  },
  keys = {
  },
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

    -- keys
    vim.keymap.set("n", "<leader>ui", require("dapui").toggle, { desc = "Toggle DAP UI" })
    vim.keymap.set("n", "<leader>?", function()
      dapui.eval(nil, { enter = true })
    end, { desc = "Visual see the variable content" })
  end,
}
