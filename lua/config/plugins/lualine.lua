

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
				local function hello()
						return [[ HII ]]
				end
				require('lualine').setup {
				options = {
						icons_enabled = false,
						theme = 'onedark',
						refresh = {
								statusline = 50,
								tabline = 100,
								winbar = 100,
						},
						component_separators = {left = "|", right = "::"},
						section_separators = {left = "|", right = "::"},
					sections = {
							lualine_a = {hello},
						-- lualine_a = {'mode'},
						-- lualine_b = {'branch', 'diff', 'diagnostics'},
						lualine_b = {},
						lualine_c = {'filename'},
						lualine_x = {'fileformat', 'filetype'},
						lualine_y = {'progress'},
						lualine_z = {'location'}
			},

				}
		}
		end
}
