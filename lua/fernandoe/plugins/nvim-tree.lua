return {
  "https://github.com/nvim-tree/nvim-tree.lua",
  dependencies = {
    "https://github.com/nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvimtree = require("nvim-tree")
    -- disable netrw at the very start of your init.lua
    -- vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true

    nvimtree.setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
        relativenumber = true,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
        custom = {
          "__pycache__",
        },
      },
      git = {
        ignore = false,
      },
      ignore,
    })

    local keymap = vim.keymap

    keymap.set("n", "<C-t>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer

    -- https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
    -- vim.api.nvim_create_autocmd("BufEnter", {
    --     nested = true,
    --         callback = function()
    --             if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
    --             vim.cmd "quit"
    --         end
    --     end
    -- })
  end,
}
