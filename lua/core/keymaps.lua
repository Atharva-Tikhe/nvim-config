
-- tabs
vim.keymap.set('n', "nt", ":tabn<CR>", {noremap = true})
vim.keymap.set('n', "pt", ":tabp<CR>", {noremap = true})
vim.keymap.set('n', "te", ":tabe ", {noremap = true})

-- Telescope keymaps
local builtin = require("telescope.builtin")
local tlsp_opts = {silent = true, noremap = true}
vim.keymap.set("n", "<leader>ff", builtin.find_files, tlsp_opts )
vim.keymap.set("n", "<leader>fg", builtin.live_grep, tlsp_opts )
vim.keymap.set("n", "<leader>fb", builtin.buffers, tlsp_opts )
vim.keymap.set("n", "<leader>fh", builtin.help_tags, tlsp_opts )
