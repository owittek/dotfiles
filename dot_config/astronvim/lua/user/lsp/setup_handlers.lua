return {
  rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
  tsserver = function(_, opts) require("typescript").setup { server = opts } end,
  denols = function(_, opts) require("deno-nvim").setup { server = opts } end,
}
