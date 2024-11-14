return {
    "https://github.com/ThePrimeagen/harpoon",
    config = function ()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>0", mark.add_file, { desc = "Harpoon: Add file" })
        vim.keymap.set("n", "<leader>h", mark.add_file, { desc = "Harpoon: Add file" })
        vim.keymap.set("n", "<leader>9", ui.toggle_quick_menu, { desc = "Harpoon: Select file" })

        vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Harpoon: Go to file 1..7" })
        vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "which_key_ignore" })
        vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "which_key_ignore" })
        vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "which_key_ignore" })
        vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end, { desc = "which_key_ignore" })
        vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end, { desc = "which_key_ignore" })
        vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end, { desc = "which_key_ignore" })

        local telescope_ok, telescope = pcall(require, "telescope")
        if not telescope_ok then return end

        telescope.load_extension('harpoon')

        vim.keymap.set("n", "<leader>8", "<cmd>Telescope harpoon marks<CR>", { desc = "Harpoon: Select file with Telescope" })
    end,
}
