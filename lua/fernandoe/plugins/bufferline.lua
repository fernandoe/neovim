return {
    "https://github.com/akinsho/bufferline.nvim",
    dependencies = {
        "https://github.com/nvim-tree/nvim-web-devicons",
    },
    version = "*",
    event = "VeryLazy",
    opts = {
        options = {
            mode = "buffers",
            separator_style = "thick",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    separator = true,
                    text_align = "left",
                },
            },
        },
    },
}
