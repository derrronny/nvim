vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set relativenumber ]]
vim.cmd [[ set termguicolors ]]
vim.cmd [[ inoremap jj <Esc> ]]
vim.cmd [[ colorscheme kanagawa ]]
vim.cmd [[ set tabstop=2]]
vim.cmd [[ set shiftwidth=2]]
vim.cmd [[ set shiftround ]]
vim.cmd [[ set expandtab ]]

--Line numbers
vim.wo.number = true
