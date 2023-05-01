local utils = require "astronvim.utils"
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.auto_install = vim.fn.executable "tree-sitter" == 1

    opts.indent = {
      enable = true,
      disable = { "python" },
    }

    if not opts.ensure_installed then opts.ensure_installed = {} end
    utils.list_insert_unique(opts.ensure_installed, {
      "lua",
      "python",
      "markdown",
      "markdown_inline",
      "yaml",
      "html",
      "gitcommit",
    })
  end,
}
