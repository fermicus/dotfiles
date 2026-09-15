-- Diagnostics
local diagnostics_enabled = false

vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = false,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = ">>",
			[vim.diagnostic.severity.WARN] = "⚠",
		},
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.keymap.set("n", "<leader>d", function()
	diagnostics_enabled = not diagnostics_enabled

	vim.diagnostic.config({
		virtual_lines = diagnostics_enabled,
	})

	vim.diagnostic.show()
end, { desc = "Toggle diagnostic virtual lines" })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
