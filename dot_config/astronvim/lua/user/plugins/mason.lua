local utils = require "astronvim.utils"
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      for index, lsp in ipairs(opts.ensure_installed) do
        if lsp == "rust_analyzer" then
          table.remove(opts.ensure_installed, index)
          break
        end
      end

      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "html" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "blackd-client" })
    end,
  },
}
