return {
    "https://github.com/preservim/vim-markdown",
    dependencies = {
        "https://github.com/godlygeek/tabular"
    },
    config = function ()
        vim.g.vim_markdown_auto_insert_bullets = 0
        vim.g.vim_markdown_new_list_item_indent = 0
        vim.g.vim_markdown_folding_disabled = 1
    end
}
