return {
  "hrsh7th/nvim-cmp",
  dependencies = { "saecki/crates.nvim" },
  opts = function(_, opts)
    table.insert(opts.sources, { name = "crates", priority = 700 })
    return opts
  end
}
