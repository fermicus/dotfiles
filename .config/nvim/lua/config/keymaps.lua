-- <leader> = space
vim.g.mapleader = " "

-- window navigation
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>") -- vertical split
vim.keymap.set("n", "<leader>sh", "<cmd>split<CR>") -- horizontal split

vim.keymap.set("n", "<C-a>", "<C-w>h") -- move to left window
vim.keymap.set("n", "<C-d>", "<C-w>l") -- move to right window
vim.keymap.set("n", "<C-s>", "<C-w>j") -- move to lower window
vim.keymap.set("n", "<C-w>", "<C-w>k") -- move to upper window

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) -- yank to clipboard

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

---------- plugin specific keymaps ----------

-- mini.files
vim.keymap.set("n", "<leader>e", function()
	require("mini.files").open(vim.api.nvim_buf_get_name(0))
end)

require("mini.files").setup({
	mappings = {
		go_in = "<Right>",
		go_in_plus = "<CR>",
		go_out = "<Left>",
		go_out_plus = "<BS>",
	},
})

-- comment toggle
vim.keymap.set({ "n", "v" }, "<Leader>/", ":CommentToggle<CR>")

-- terminal
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

