require("nvim-autopairs").setup({}) -- autopairs
require("gitsigns").setup({}) -- gitsigns
require("nvim_comment").setup({ create_mappings = false }) --comment

-- terminal
require("toggleterm").setup({
	size = 20,
	direction = "horizontal",
})

-- lua line
require("lualine").setup({
	options = { theme = "auto", section_separators = "", component_separators = "" },
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = { "diagnostics", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
