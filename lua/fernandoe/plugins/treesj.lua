return {
    "https://github.com/Wansmer/treesj",
    dependencies = {
        "https://github.com/nvim-treesitter/nvim-treesitter"
    },
    keys = {
        { "<leader>m", "<CMD>TSJToggle<CR>", desc = "Toggle Treesitter Join" }
    },
    opts = {
        use_default_keymaps = false,
    },
}
