return {
    "https://github.com/epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    dependencies = {
        "https://github.com/nvim-lua/plenary.nvim",
    },
    opts = {
        -- TODO: dir should be set dynamically
        dir = "~/workspace/github/fernandoe/second-brain",
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
