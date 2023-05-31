local utils = require "astronvim.utils"
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.auto_install = vim.fn.executable "tree-sitter" == 1

    opts.indent = {
      enable = true,
      disable = { "python" },
    }

    opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, {
      "html",
    })
  end,
}
