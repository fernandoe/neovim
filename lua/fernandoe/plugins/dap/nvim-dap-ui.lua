return {
    "https://github.com/rcarriga/nvim-dap-ui",
    dependencies = {
        "https://github.com/mfussenegger/nvim-dap",
        "https://github.com/nvim-neotest/nvim-nio",
    },
    keys = {
        { "<leader>db", "<CMD>DapToggleBreakpoint<CR>", desc = "Add breakpoint at line" },
        { "<leader>dr", "<CMD>DapContinue<CR>", desc = "Run or continue the debugger" },
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
    end,
}
