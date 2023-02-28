return {
  "hrsh7th/nvim-cmp",
  dependencies = { "saecki/crates.nvim", "zbirenbaum/copilot-cmp" },
  opts = function(_, opts)
    local has_words_before = function()
      if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match "^%s*$" == nil
    end

    local cmp = require "cmp"
    return require("astronvim.utils").extend_tbl(opts, {
      sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "crates", priority = 700 },
        { name = "copilot", priority = 650 },
        { name = "path", priority = 500 },
        { name = "buffer", priority = 250 },
      },
      mapping = {
        ["<Tab>"] = vim.schedule_wrap(function(fallback)
          if cmp.visible() and has_words_before() then
            cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
          else
            fallback()
          end
        end),
      },
    })
  end,
}
