vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree left focus<CR>')

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Bufferline
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<leader>b', ':BufferLinePick<CR>')


-- switch work panel
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true})
