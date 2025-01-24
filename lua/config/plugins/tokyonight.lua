return {

		
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
		 enabled = false,
			opts = {},
			config = function()
					vim.cmd([[colorscheme tokyonight]])
			end
		 --  config = function()
			--
			-- 	require("tokyonight").setup({
			-- 		-- use the night style
			-- 		style = "night",
			-- 		-- disable italic for functions
			-- 		styles = {
			-- 			functions = {}
			-- 		},
			-- 		-- Change the "hint" color to the "orange" color, and make the "error" color bright red
			-- 		on_colors = function(colors)
			-- 			colors.hint = colors.orange
			-- 			colors.error = "#ff0000"
			-- 		end
			-- 	})
			--  require("tokyonight.colors").setup()
			--
			-- end



}
