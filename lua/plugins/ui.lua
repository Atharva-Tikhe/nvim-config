return {
  
  { "folke/tokyonight.nvim", 
    lazy = false, 
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end
  },

  {
    "nvim-lualine/lualine.nvim",
    config = true
  },

  { "lewis6991/gitsigns.nvim", 
  config = true 
  },

}
