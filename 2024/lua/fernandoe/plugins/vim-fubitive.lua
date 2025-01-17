-- Extend fugitive.vim to support Bitbucket URLs in :Gbrowse.
return {
    "https://github.com/tommcdo/vim-fubitive",
    config = function ()
        vim.g.fubitive_domain_pattern = "bitbucket.es.ad.adp.com"
    end
}
