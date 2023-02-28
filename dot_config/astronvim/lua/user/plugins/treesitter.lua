return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
    ensure_installed = {
      "rust",
      "lua",
      "python",
      "javascript",
      "typescript",
      "markdown",
      "markdown_inline",
      "toml",
      "json",
      "yaml",
      "html",
      "help",
      "gitcommit",
    },
  },
}
