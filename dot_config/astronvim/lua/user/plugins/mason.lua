return {
  "sigmasd/deno-nvim",
  "jose-elias-alvarez/typescript.nvim",
  "simrat39/rust-tools.nvim",
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { ensure_installed = { "denols", "rust_analyzer", "tsserver", "pyright" } },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = { ensure_installed = { "codelldb", "python" } },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "eslint_d",
        "ruff",
        "selene",
        "prettierd",
        "black",
        "stylua",
        "rustfmt",
      },
    },
    config = function(plugin, opts)
      plugin.default_config(opts)
      require("mason-null-ls").setup_handlers({
        prettierd = function()
          require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with({
            condition = function(utils)
              return utils.root_has_file("package.json")
                or utils.root_has_file(".prettierrc")
                or utils.root_has_file(".prettierrc.json")
                or utils.root_has_file(".prettierrc.js")
            end,
          }))
        end,
        eslint_d = function()
          require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with({
            condition = function(utils)
              return utils.root_has_file("package.json")
                or utils.root_has_file(".eslintrc.json")
                or utils.root_has_file(".eslintrc.js")
            end,
          }))
        end,
      })
    end,
  },
}
