vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')
vim.keymap.set('n', '<leader>tt', ':Neotree left<CR>')

vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<leader><Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>d', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>D', ':BufferLineCloseRight<CR>')

vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
