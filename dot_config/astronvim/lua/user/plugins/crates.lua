return {
  "saecki/crates.nvim",
  event = { "BufRead Cargo.toml" },
  module = false,
  opts = function() return { null_ls = { enabled = true, name = "crates.nvim" } } end,
}
