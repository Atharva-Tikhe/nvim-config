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
			{
				'saghen/blink.cmp'
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
},
		
		{ 'williamboman/mason.nvim',
				config = function()
						require('mason').setup()
				end
		},
		{ 'williamboman/mason-lspconfig.nvim',
				dependencies = {
						'williamboman/mason.nvim'
				},
				config = function()
						local capabilities = require('blink.cmp').get_lsp_capabilities()
						require('mason-lspconfig').setup()
						require('mason-lspconfig').setup_handlers {
								function (server_name)
										if server_name == 'pylsp' then
												require("lspconfig")[server_name].setup {
														capabilities = capabilities,
														settings = {
															pylsp = {
																plugins = {
																	pycodestyle = {
																		ignore = {'W391' },
																		maxLineLength = 100
																	}
																}
															}
														},
														ignore = {"W191", "E231", "E251", "W391", "E302"}
												}
										end
										require("lspconfig")[server_name].setup {capabilities = capabilities}
								end,
						}
				end
		},

}
