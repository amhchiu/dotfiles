vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.title = true

-- indentation --
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Load plugins
require("config.lazy")
