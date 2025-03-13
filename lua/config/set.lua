vim.g.mapleader = " "

-- clipboard
vim.o.clipboard = "unnamed,unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Configure how new splits are opened
vim.opt.splitright = true    -- Vertical split to the right
vim.opt.splitbelow = true    -- Horizontal split to the bottom

-- indent configuration
vim.opt.autoindent = true    -- Mantém a indentação da linha anterior
vim.opt.smartindent = false  -- Desative para evitar conflitos com Treesitter
vim.opt.cindent = false      -- Desative para evitar conflitos
vim.opt.tabstop = 2          -- Tamanho do tab
vim.opt.shiftwidth = 2       -- Tamanho da indentação
vim.opt.expandtab = true     -- Usa espaços em vez de tabs

-- https://github.com/kevinhwang91/nvim-ufo
vim.o.foldcolumn = '1'       -- '0' is not bad
vim.o.foldlevel = 99         -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Case insensitive search, unless a capital letter is used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"     -- Show vertical line to help on write code

