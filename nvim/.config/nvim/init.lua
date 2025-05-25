vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true

-- indentation --
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.signcolumn = 'yes'

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99

-- Load keymaps
require('keymaps')

-- Load abbreviations
require('emoji_abbrevs')

-- Load plugins
require("config.lazy")
