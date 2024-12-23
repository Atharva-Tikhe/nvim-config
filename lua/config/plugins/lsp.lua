return {
		{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},

		 },
		-- config = function()
		-- 		require'lspconfig'.pylsp.setup{
		-- 		settings = {
		-- 						pylsp = {
		-- 								plugins = {
		-- 										pycodestyle = {
		-- 												ignore = {'W391'}
		-- 										},
		-- 										preload = {
		-- 												modules = {'os', 'sys'}
		-- 										},
		-- 										rope_autoimport = {
		-- 												enabled = true,
		-- 												completion = {enabled = true}
		-- 										},
		-- 										jedi = {
		-- 												auto_import_modules = {"os", "pandas", "sys"}
		-- 										},
		-- 										jedi_completion = {
		-- 												fuzzy = true
		-- 										}
		-- 								}
		-- 						}
		--
		-- 				}
		--
		-- 		}
		-- 		require'lspconfig'.lua_ls.setup{}
		-- 		require'lspconfig'.jedi_language_server.setup{}
		-- 		require'lspconfig'.bashls.setup{}
		-- end,
}

}
