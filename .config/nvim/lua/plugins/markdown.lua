require("render-markdown").setup({
	heading = {
		-- sign = false,
		width = "block",
		min_width = 75,
		left_pad = 0,
		left_margin = 0,
		position = "inline",
	},
	quote = {
		repeat_linebreak = true,
	},
	code = {
		enabled = true,
		language = true,
		position = "right",
		left_pad = 1,
		right_pad = 1,
		-- language_icon = true,
		-- position = 'right',
		-- border = 'thin',
		width = "block",
		min_width = 75,
	},
	pipe_table = {
		style = "full",
		preset = "double",
	},
})
