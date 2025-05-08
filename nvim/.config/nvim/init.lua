vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.title = true

-- indentation --
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.foldmethod = 'marker'

-- Load abbreviations
require('emoji_abbrevs')

-- Load plugins
require("config.lazy")
