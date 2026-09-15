-- C, Rust, Python, Bash

-- Completion (blink)
require("blink.cmp").setup({
	keymap = {
		preset = "default",
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<CR>"] = { "accept", "fallback" },
	},
})

-- LSP
vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })

vim.lsp.enable({
	"clangd",
	"rust_analyzer",
	"pylsp",
	"bashls",
})

-- Formatter (conform)
require("conform").setup({
	formatters_by_ft = {
		c = { "clang_format" },
		rust = { "rustfmt" },
		python = { "ruff_format" },
		sh = { "shfmt" },
	},
	format_on_save = {
		timeout_ms = 100,
		lsp_fallback = true,
	},
})

-- Treesitter (nvim-treesitter)
-- use :TSInstall c rust python bash
vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})
