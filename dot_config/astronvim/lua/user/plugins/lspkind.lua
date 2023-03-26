return {
  "onsails/lspkind.nvim",
  dependencies = { "mortepau/codicons.nvim" },
  opts = function(_, opts)
    opts.preset = "codicons"
    opts.symbol_map = {
      Boolean = "",
      Key = "",
      Null = "",
      String = "",
      Copilot = "",
      Snippet = "",
    }
    return opts
  end,
}
