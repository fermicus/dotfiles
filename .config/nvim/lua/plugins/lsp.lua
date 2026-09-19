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

-- Mason LSP
-- Install LSPs into ~/.local/share/nvim/mason
require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"clangd", -- c
		"rust_analyzer", -- rust
		"pyright", -- python
		"ruff", -- python
		"bashls", -- bash
		"lua_ls", -- lua
	},
})

-- Nvim LSP API
vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() }, "pyright", {
	settings = {
		python = {
			analysis = { typeCheckingMode = "basic" },
		},
	},
})

vim.lsp.enable({
	"clangd",
	"rust_analyzer",
	"pyright",
	"ruff",
	"bashls",
	"lua_ls",
})

-- Formatter (conform)
require("conform").setup({
	formatters_by_ft = {
		c = { "clang_format" },
		rust = { "rustfmt" },
		python = { "ruff_format", "ruff_organize_imports" },
		sh = { "shfmt" },
		lua = { "stylua" },
	},
	format_on_save = {
		timeout_ms = 100,
		lsp_fallback = true,
	},
})

local ts_langs = { "c", "rust", "python", "bash", "lua", "markdown", "markdown_inline" }

require("nvim-treesitter").setup()
require("nvim-treesitter").install(ts_langs)

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "rust", "python", "bash", "lua", "markdown" },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
