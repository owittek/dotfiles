return {
  "hrsh7th/nvim-cmp",
  dependencies = { "saecki/crates.nvim" },
  opts = function(_, opts)
    table.insert(opts.sources, { name = "crates", priority = 700 })
    table.insert(opts.sources, { name = "copilot", priority = 700 })
    return opts
  end,
  config = function(cmp, opts)
    local has_words_before = function()
      if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match "^%s*$" == nil
    end

    require("astronvim.utils").extend_tbl(opts, {
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
