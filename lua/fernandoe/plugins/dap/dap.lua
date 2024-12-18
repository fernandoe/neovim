-- Reference: https://youtu.be/Ul_WPhS2bis?si=4NVZP1CPxtZGWIfP
return {
  "https://github.com/mfussenegger/nvim-dap",
  dependencies = {
    {
      "https://github.com/microsoft/vscode-js-debug",
      tag = "v1.96.0",
      build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    },
    {
      "https://github.com/mxsdev/nvim-dap-vscode-js",
      config = function()
        require("dap-vscode-js").setup({
          debugger_path = vim.fn.resolve(vim.fn.stdpath("data") .. "/lazy/vscode-js-debug"),
          adapters = {
            "pwa-node",
          }
        })
      end
    },
    {
      "https://github.com/Joakker/lua-json5",
      enabled = false,
      build = "./install.sh",
    }
  },
  config = function()
    -- Signs
    vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "DapBreakpoint", linehl = "", numhl = "" })
    vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DapStopped", linehl = "", numhl = "" })
    vim.fn.sign_define("DapBreakpointRejected", { text = "🚫", texthl = "DapBreakpointRejected", linehl = "", numhl = "" })
    vim.fn.sign_define("DapBreakpointCondition", { text = "❓", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
    vim.fn.sign_define("DapLogPoint", { text = "💬", texthl = "DapLogPoint", linehl = "", numhl = "" })

    local dap = require("dap")

    local js_based_languages = { "typescript", "javascript" }

    for _, language in ipairs(js_based_languages) do
      dap.configurations[language] = {
        -- Debug single nodejs files
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
          runtimeExecutable = "node",
        },
        --     --     -- Debug nodejs processes (make sure to add --inspect= when starting nodejs)
        --     --     {
        --     --       type = "pwa-node",
        --     --       request = "attach",
        --     --       name = "Attach",
        --     --       processId = require("dap.utils").pick_process,
        --     --       cwd = "${workspaceFolder}",
        --     --     },
        --     --     -- Debug web applicaftions (client side)
        --     --     {
        --     --       type = "pwa-chrome",
        --     --       request = "launch",
        --     --       name = "Launch & Debug Chrome",
        --     --       url = "http://localhost:3000",
        --     --       webRoot = "${workspaceFolder}",
        --     --     },
        --     --     {
        --     --       name = "----- ⬇️  launch.json configs ⬇️  -----",
        --     --       type = "",
        --     --       request = "launch",
        --     --     },
      }
    end

    vim.keymap.set("n", "<F7>", dap.step_into, { desc = "Step into" })
    vim.keymap.set("n", "<F8>", dap.step_over, { desc = "Step over" })
    vim.keymap.set("n", "<F9>", dap.continue, { desc = "Continue" })
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
  end,
}
