return {
  "https://github.com/vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/workspace/github/fernandoe/agenda",
        syntax = "markdown",
        ext = ".md",
      },
    }
  end,
}
