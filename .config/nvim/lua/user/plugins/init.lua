return {
        ["simrat39/rust-tools.nvim"] = {
                after = "mason-lspconfig.nvim",
                config = function()
                        require("rust-tools").setup {
                                server = astronvim.lsp.server_settings "rust_analyzer",
                        }
                end,
        },
        ["ThePrimeagen/harpoon"] = {},
}
