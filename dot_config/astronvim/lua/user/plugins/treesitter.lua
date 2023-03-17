return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = vim.fn.executable "tree-sitter" == 1,
    indent = { enable = true, disable = { "python" } },
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
