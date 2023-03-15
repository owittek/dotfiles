return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "HiPhish/nvim-ts-rainbow2" },
  opts = {
    auto_install = vim.fn.executable("tree-sitter") == 1,
    indent = { enable = true, disable = { "python" } },
    rainbow = { enable = true },
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
