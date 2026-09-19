local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	{ "nvim-mini/mini.files", version = "*" },
	{ "akinsho/toggleterm.nvim", version = "*" },
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Themes
	{ "thesimonho/kanagawa-paper.nvim", lazy = false, priority = 1000, opts = {} },

	-- QOL
	{ "terrortylor/nvim-comment" },
	{ "lewis6991/gitsigns.nvim" },
	{ "windwp/nvim-autopairs", event = "InsertEnter" },
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
	},
	{ "sphamba/smear-cursor.nvim" },

	-- LSP
	{ "neovim/nvim-lspconfig" },
	{ "saghen/blink.cmp", version = "1.*", dependencies = "rafamadriz/friendly-snippets" },
	{ "stevearc/conform.nvim" },
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate" },
	-- Mason (LSP, Formatter + nvim LSP API)
	{ "mason-org/mason.nvim" },
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
	},

	-- miscellaneous
	{ "ingur/floatty.nvim" },
})
