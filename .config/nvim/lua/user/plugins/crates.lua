return {
  "saecki/crates.nvim",
  event = { "BufRead Cargo.toml" },
  opts = function() return { null_ls = { enabled = true, name = "crates.nvim" } } end,
}
