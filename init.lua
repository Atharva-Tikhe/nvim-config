
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = ","

-- Source mapping 
vim.keymap.set('n', '<leader>sv', ':w<CR> :source $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
-- Set window switching mappings

vim.keymap.set('n', '<leader>h', '<c-w>h', {desc = 'switch to left window'})
vim.keymap.set('n', '<leader>j', '<c-w>j', {desc = 'switch to bottom window'})
vim.keymap.set('n', '<leader>k', '<c-w>k', {desc = 'switch to up window'})
vim.keymap.set('n', '<leader>l', '<c-w>l', {desc = 'switch to right window'})


-- Set tab switching mappings
vim.keymap.set('n', 'nt', ":tabn<cr>")
vim.keymap.set('n', 'pt', ":tabn<cr>")



require('config.lazy')

