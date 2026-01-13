return {
  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      ensure_installed = {
        "pyright",
        "r_language_server",
        "bashls",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config.pyright = { capabilities = capabilities, }
      vim.lsp.config.r_language_server = { capabilities = capabilities, }
      vim.lsp.config.bashls = { capabilities = capabilities, }
      vim.lsp.config.html_lsp = {capabilities = capabilities, }
      vim.lsp.enable({
        "pyright",
        "r_language_server",
        "bashls",
        "html_lsp",
      })

   end,

  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
            mapping = {
              ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                else
                  fallback()
                end
              end, { "i", "s" }),

              ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_prev_item()
                else
                  fallback()
                end
              end, { "i", "s" }),

              -- keep other mappings like <CR> unchanged
            },
            sources = {
              { name = "nvim_lsp" },
              { name = "buffer" },
              { name = "path" },
            },
      })
    
    end,
  },
}
