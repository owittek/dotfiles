return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "folke/trouble.nvim" },
  opts = function(_, opts)
    local trouble = require "trouble.providers.telescope"
    return require("core.utils").extend_tbl(opts, {
      defaults = {
        mappings = {
          i = { ["<c-t>"] = trouble.open_with_trouble },
          n = { ["<c-t>"] = trouble.open_with_trouble },
        },
      },
    })
  end,
}
