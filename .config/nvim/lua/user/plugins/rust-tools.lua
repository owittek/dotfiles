return {
        require("rust-tools").setup {
                server = astronvim.lsp.server_settings "rust_analyzer",
        }
}
