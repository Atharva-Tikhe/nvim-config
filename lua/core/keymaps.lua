local opts = {silent = true, noremap = true}

-- tabs
vim.keymap.set('n', "nt", ":tabn<CR>", {noremap = true})
vim.keymap.set('n', "pt", ":tabp<CR>", {noremap = true})
vim.keymap.set('n', "te", ":tabe ", {noremap = true})

-- Telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, opts )
vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts )
vim.keymap.set("n", "<leader>fb", builtin.buffers, opts )
vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts )

-- ToggleTerm
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)
vim.keymap.set("t", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)

