return {
    "https://github.com/nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "https://github.com/nvim-lua/plenary.nvim"
     },
    config = function()
        require("telescope").setup({
        })

        local keymap = vim.keymap
        keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", { desc = "Find files" })
        keymap.set('n', '<c-p>', "<cmd>Telescope find_files<cr>", { desc = "Find files" })
        keymap.set('n', '<leader>fg', "<cmd>Telescope git_files<cr>", { desc = "Find files in git" })
        keymap.set('n', '<leader>fs', "<cmd>Telescope live_grep<cr>", { desc = "Find string in files" })
        keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
        keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", { desc = "Find tags" })
        keymap.set('n', '<leader>fl', "<cmd>Telescope resume<cr>", { desc = "Open last find window" })
    end,
}


--   keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
--   keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
--   keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
--   keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })


--   local telescope = require("telescope")
--   local actions = require("telescope.actions")

--   telescope.setup({
--     defaults = {
--       path_display = { "truncate " },
--       mappings = {
--         i = {
--           ["<C-k>"] = actions.move_selection_previous, -- move to prev result
--           ["<C-j>"] = actions.move_selection_next, -- move to next result
--           ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
--         },
--       },
--     },
--   })

--   telescope.load_extension("fzf")
