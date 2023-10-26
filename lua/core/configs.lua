vim.wo.number = true
vim.wo.relativenumber = true

-- tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true



-- searching
vim.opt.ignorecase = true -- игнор регистра при поиске
vim.opt.showmatch = true -- подсветка 

-- autocomplet
vim.opt.completeopt = 'menuone,noselect'

-- clipboard:
vim.opt.clipboard = "unnamedplus"

-- show spaces
vim.opt.listchars = {space = "·"}
vim.opt.list = true
