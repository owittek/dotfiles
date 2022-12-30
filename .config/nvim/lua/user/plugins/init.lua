return {
  ["ThePrimeagen/harpoon"] = {
    config = function() require "user.plugins.harpoon" end
  },
  ["simrat39/rust-tools.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.rust-tools" end
  },
  ["sigmasd/deno-nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.denols" end
  },
  ["jose-elias-alvarez/typescript.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.typescript" end
  },
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function() require "user.plugins.trouble" end
  },
  ["lvimuser/lsp-inlayhints.nvim"] = {
    module = "lsp-inlayhints",
    config = function() require "user.plugins.lsp-inlayhints" end
  },
  ["aserowy/tmux.nvim"] = {
    config = function() require "user.plugins.tmux" end
  }
}
