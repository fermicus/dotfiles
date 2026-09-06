-- Setup plugins
-- require("kanagawa").setup({})
-- vim.cmd.colorscheme("kanagawa-dragon")
-- vim.opt.termguicolors = true
--
-- vim.g.ayucolor = "dark" -- "light", "mirage", or "dark"
--
-- vim.cmd.colorscheme("ayu")
--
--
require('lualine').setup({
  options = {
    theme = 'ayu',
  },
})

require("ayu").setup({})

vim.cmd.colorscheme("ayu")
