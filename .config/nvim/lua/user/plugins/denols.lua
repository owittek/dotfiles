return {
  require("deno-nvim").setup {
    server = astronvim.lsp.server_settings "denols"
  }
}
