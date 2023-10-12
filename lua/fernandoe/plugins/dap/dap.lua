return {

    --         -- dap / debugging / debug
    -- map("n", "<F5>", ":lua require'dap'.continue()<CR>")
    -- map("n", "<F3>", ":lua require'dap'.step_over()<CR>")
    -- map("n", "<F2>", ":lua require'dap'.step_into()<CR>")
    -- map("n", "<F12>", ":lua require'dap'.step_out()<CR>")
    -- map("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
    -- map("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
    -- map("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
    -- map("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
    -- -- map("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")
    -- map("n", "<leader>dt", ":lua require'dap-vscode-js'.debug_test()<CR>")
    -- -- vim.keymap.set('n', '<F5>', require 'dap'.continue)
    -- -- vim.keymap.set('n', '<F10>', require 'dap'.step_over)
    -- -- vim.keymap.set('n', '<F11>', require 'dap'.step_into)
    -- -- vim.keymap.set('n', '<F12>', require 'dap'.step_out)
    -- -- vim.keymap.set('n', '<leader>b', require 'dap'.toggle_breakpoint)
    --
    --
    "https://github.com/mfussenegger/nvim-dap",
    -- keys = {
    --     { "<F7>", require("dap").step_into, desc = "Step into" },
    --     { "<F8>", require("dap").step_over, desc = "Step over" },
    --     { "<F9>", require("dap").continue, desc = "Continue" },
    -- },
    config = function()
        -- Signs
        vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapStopped", { text = "▶", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapBreakpointRejected", { text = "🚫", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapBreakpointCondition", { text = "❓", texthl = "", linehl = "", numhl = "" })
        vim.fn.sign_define("DapLogPoint", { text = "💬", texthl = "", linehl = "", numhl = "" })

        local dap = require("dap")

        dap.adapters["pwa-node"] = {
            type = "server",
            host = "127.0.0.1",
            port = 8123,
            executable = { command = "js-debug-adapter" },
        }

        for _, language in ipairs({ "typescript", "javascript" }) do
            dap.configurations[language] = {
                {
                    type = "pwa-node",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    cwd = "${workspaceFolder}",
                    runtimeExecutable = "node",
                },
                {
                    type = "pwa-node",
                    request = "attach",
                    name = "Attach",
                    processId = require("dap.utils").pick_process,
                    cwd = "${workspaceFolder}",
                },
            }
        end

        -- keys = {
        vim.keymap.set("n", "<F7>", require("dap").step_into, { desc = "Step into" })
        vim.keymap.set("n", "<F8>", require("dap").step_over, { desc = "Step over" })
        vim.keymap.set("n", "<F9>", require("dap").continue, { desc = "Continue" })
        vim.keymap.set("n", "<leader>b", require("dap").toggle_breakpoint, { desc = "Toggle breakpoint" })

        -- local dap = require("dap")

        -- Set keymaps to control the debugger
        -- vim.keymap.set("n", "<F5>", require("dap").continue)
        -- vim.keymap.set("n", "<F10>", require("dap").step_over)
        -- vim.keymap.set("n", "<F11>", require("dap").step_into)
        -- vim.keymap.set("n", "<F12>", require("dap").step_out)
        -- vim.keymap.set("n", "<leader>b", require("dap").toggle_breakpoint)
        -- vim.keymap.set("n", "<leader>B", function()
        --     require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
        -- end)
    end,
}
