return {
  tsserver = function(_, opts) require("typescript").setup { server = opts } end,
  denols = function(_, opts) require("deno-nvim").setup { server = opts } end,
}
