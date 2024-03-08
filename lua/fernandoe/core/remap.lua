vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

-------------------------------------------------
-- KEYBINDINGS
-------------------------------------------------

local function map(m, k, v, desc, expr)
    vim.keymap.set(m, k, v, { silent = true, desc = desc, expr = expr })
end

map("n", "<leader>l", "<cmd>Lazy<CR>", "Lazy window")

map("n", "<leader>h", "<cmd>nohlsearch<CR>", "Clear search highlights")

-- Change 2 split windows from vert to horiz or horiz to vert
map("n", "<leader>th", "<C-w>t<C-w>H")
map("n", "<leader>tk", "<C-w>t<C-w>K")

-- Buffers
map("n", "<C-PageUp>", "<cmd>bprevious<CR>")
map("n", "<C-PageDown>", "<cmd>bnext<CR>")

-- Navigation Tree
-- map("n", "<C-f>", ":Neotree toggle<CR>")
-- map("n", "<C-t>", ":Neotree toggle<CR>")

map("n", "<C-s>", "<cmd>w<CR>", "Save current buffer")
map("i", "<C-s>", "<Esc><cmd>w<CR>", "Save current buffer")

-- https://github.com/moll/vim-bbye
map("n", "<C-c>", "<CMD>Bdelete<CR>", "Close the current buffer")

map("n", "<leader>sv", "<C-w>v", "Split window vertically")
map("n", "<leader>sh", "<C-w>s", "Split window horizontally")

-- LSP
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "See available code actions")
map("n", "<leader>rn", vim.lsp.buf.rename, "Smart rename")
map("n", "K", vim.lsp.buf.hover, "Show hover info")
map("n", "gd", vim.lsp.buf.definition, "Go to definition")
map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")
map("n", "gi", vim.lsp.buf.implementation, "Go to type definition")
-- map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", "List symbol references")
map("n", "gr", "<cmd>Telescope lsp_references<CR>", "List symbol references")

map("n", "[d", vim.diagnostic.goto_next, "Go to next issue")
map("n", "]d", vim.diagnostic.goto_prev, "Go to previous issue")
map("n", "<leader>dl", "<CMD>Telescope diagnostics<CR>", "List all issues")

-- Increment/decrement numbers
map("n", "+", "<C-a>", "Increment a number")
map("n", "-", "<C-x>", "Decrement a number")

--  Select all
map("n", "<C-a>", "gg<S-v>G", "Select all")

-- Macros
map("n", "Q", "@qj", "Run macro q and go down")
map("x", "Q", ":norm @q<CR>", "Run macro q and go down")

-- spectre
map("n", "<leader>S", "<cmd>lua require('spectre').toggle()<CR>", "Toggle Spectre")
map("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search current word")
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', "Search current word")
map("n", "<leader>sf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', "Search on current file")
