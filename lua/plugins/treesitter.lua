
return {

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "python",
        "r",
        "bash",
        "lua",
        "json",
        "yaml",
        "toml",
        "markdown",
        "vim",
        "regex",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    },
  },

}
