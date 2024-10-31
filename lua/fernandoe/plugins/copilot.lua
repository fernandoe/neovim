return {
  "https://github.com/zbirenbaum/copilot.lua",
  enabled = true,
  cmd = "Copilot",
  -- event = "InsertEnter",
  -- opts = {
  -- suggestion = { enabled = false },
  -- panel = { enabled = false },
  -- }
  config = function()
    require("copilot").setup({
      panel = {
        enabled = true,
        auto_refresh = true,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 300,
        accept = false, -- disable built-in keymapping
      },
    })

    vim.keymap.set("i", "<Tab>", function()
      if require("copilot.suggestion").is_visible() then
        require("copilot.suggestion").accept()
      else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
      end
    end, {
      silent = true,
    })
  end,
}
