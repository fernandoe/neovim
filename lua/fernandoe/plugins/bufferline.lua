return {
    "https://github.com/akinsho/bufferline.nvim",
    dependencies = {
        "https://github.com/nvim-tree/nvim-web-devicons"
    },
    version = "*",
    opts = {
        options = {
            mode = "buffers",
            separator_style = "slant",
            offsets = {{
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }},
        },
    },
}
