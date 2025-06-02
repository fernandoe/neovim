return {
  "https://github.com/ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "https://github.com/nvim-lua/plenary.nvim",
  },
  enabled = true,
  event = "VeryLazy",
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: Select file" })
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: Add file" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>m", function() harpoon:list():next() end, { desc = "Harpoon: Next file" })
    vim.keymap.set("n", "<leader>n", function() harpoon:list():prev() end, { desc = "Harpoon: Previous file" })
  end,
}

-- Keymap Examples
-- vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--
-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
--
-- -- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- My old configuration
-- vim.keymap.set("n", "<leader>0", mark.add_file, { desc = "Harpoon: Add file" })
-- vim.keymap.set("n", "<leader>h", mark.add_file, { desc = "Harpoon: Add file" })
-- vim.keymap.set("n", "<leader>9", ui.toggle_quick_menu, { desc = "Harpoon: Select file" })
--
-- vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Harpoon: Go to file 1..7" })
-- vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "which_key_ignore" })
-- vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "which_key_ignore" })
-- vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "which_key_ignore" })
-- vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end, { desc = "which_key_ignore" })
-- vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end, { desc = "which_key_ignore" })
-- vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end, { desc = "which_key_ignore" })
