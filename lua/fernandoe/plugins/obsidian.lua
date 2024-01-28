return {
    "https://github.com/epwalsh/obsidian.nvim",
    dependencies = {
        "https://github.com/nvim-lua/plenary.nvim",
    },
    opts = {
        version = "*", -- recommended, use latest release instead of latest commit
        templates = {
            subdir = "templates",
        },
        daily_notes = {
            folder = "daily-notes",
            date_format = "%Y-%m-%d",
            alias_format = "%Y-%m-%d",
            template = "new-daily-notes.md",
        },
    },
}
