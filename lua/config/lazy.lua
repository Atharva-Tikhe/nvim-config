local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
		{ 'williamboman/mason.nvim',
				config = function()
						require('mason').setup()
				end
		},
		{ 'williamboman/mason-lspconfig.nvim',
				config = function()
						require('mason-lspconfig').setup()
						require('mason-lspconfig').setup_handlers {
								function (server_name)
										require("lspconfig")[server_name].setup {}
								end,
						}
								require"lspconfig".pylsp.setup {

										ignore = {"W191", "E231", "E251"}
								}
				end
		},
		{ 'nvim-tree/nvim-web-devicons',
				config = function()
						require("nvim-web-devicons").setup()
				end,
		},
		{
				'tpope/vim-fugitive',
		},
    { import = "config.plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
	vim.cmd[[colorscheme habamax]]
})
