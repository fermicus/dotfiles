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
-- vim.keymap.set("n", "<leader>e", function()
-- 	require("mini.files").open(vim.api.nvim_buf_get_name(0))
-- end)
vim.keymap.set("n", "<leader>e", function()
	local mini_files = require("mini.files")

	if not mini_files.close() then
		mini_files.open(vim.fn.expand("%:p:h"))
	end
end, { desc = "Toggle MiniFiles" })

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

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telecope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
