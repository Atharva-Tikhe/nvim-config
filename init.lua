
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = ","

-- Source mapping 
vim.keymap.set('n', '<leader>sv', ':w<CR> :source $MYVIMRC<CR>')
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


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('config.lazy')

