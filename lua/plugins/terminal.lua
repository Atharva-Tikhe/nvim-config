
return {
  
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        shading_factor = 2,
        direction = "float",  -- options: 'horizontal', 'vertical', 'float'
        float_opts = {
          border = "curved",
          winblend = 10,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })
    end,
  },

}
