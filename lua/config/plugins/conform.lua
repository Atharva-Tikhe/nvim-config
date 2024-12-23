return {


		"stevearc/conform.nvim",
		event = {"BufReadPre", "BufNewFile"},
		config = function()
				local conform = require('conform')

				conform.setup({
						lua = {"stylua"},
						python = {"isort", "black"},
						javascript = {"prettierd", "prettier", 	stop_after_first = true},
						format_on_save = {
								timeout_ms = 200,
								lsp_fallback = "fallback",
						}

				})
		end


}
