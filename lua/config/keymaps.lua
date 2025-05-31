local function map(m, k, v, desc, expr)
  vim.keymap.set(m, k, v, { silent = true, desc = desc, expr = expr })
end

vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostics float" })

-- LSP
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "See available code actions")
map("n", "<leader>rn", vim.lsp.buf.rename, "Smart rename")
map("n", "K", vim.lsp.buf.hover, "Show hover info")
map("n", "gd", vim.lsp.buf.definition, "Go to definition")
map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")
map("n", "gi", vim.lsp.buf.implementation, "Go to type definition")
-- map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", "List symbol references")
map("n", "gr", "<cmd>Telescope lsp_references<CR>", "List symbol references")
map("n", "<leader>mp", vim.lsp.buf.format, "Format file")

map("n", "[d", vim.diagnostic.goto_next, "Go to next issue")
map("n", "]d", vim.diagnostic.goto_prev, "Go to previous issue")
map("n", "<leader>dl", "<CMD>Telescope diagnostics<CR>", "List all issues")

map("i", "jj", "<ESC>", "Exit the INSERT mode")
map("i", "jk", "<ESC>", "Exit the INSERT mode")

-- map("n", "<C-/>", "gcc", "Comment or uncomment a line", false)
map({ "n", "v" }, "<C-_>", "gcc", "Comment or uncomment a line", false)
