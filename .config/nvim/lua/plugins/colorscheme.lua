-- Setup plugins
require("mfd").setup({})
require("kanagawa").setup({})

vim.keymap.set("n", "<leader>cs", function()
	if vim.g.colors_name == "mfd-hud" then
		vim.cmd.colorscheme("kanagawa-dragon")
	else
		vim.cmd.colorscheme("mfd-hud")
	end
end)

-- vim.cmd.colorscheme("mfd-hud")
vim.cmd.colorscheme("kanagawa-dragon")
