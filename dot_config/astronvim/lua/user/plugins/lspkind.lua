return {
  "onsails/lspkind.nvim",
  opts = function(_, opts)
    opts.preset = "codicons"
    opts.symbol_map = {
      Array = "",
      Boolean = "",
      Key = "",
      Namespace = "",
      Null = "",
      Number = "",
      Object = "",
      Package = "",
      String = "",
      Copilot = "",
      Snippet = "",
    }
    vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#0F2637" })
    return opts
  end,
}
