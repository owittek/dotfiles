return {
  "sigmasd/deno-nvim",
  "jose-elias-alvarez/typescript.nvim",
  "simrat39/rust-tools.nvim",
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { ensure_installed = { "denols", "rust_analyzer", "tsserver", "pyright", "taplo", "sumneko_lua" } },
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
    config = function(opts)
      local null_ls = require("null-ls")
      local mason_null_ls = require("mason-null-ls")

      mason_null_ls.setup(opts)
      mason_null_ls.setup_handlers({
        prettier = function()
          null_ls.register(null_ls.builtins.formatting.prettier.with({
            condition = function(utils)
              return utils.root_has_file("package.json")
                  or utils.root_has_file(".prettierrc")
                  or utils.root_has_file(".prettierrc.json")
                  or utils.root_has_file(".prettierrc.js")
            end,
          }))
        end,
        prettierd = function()
          null_ls.register(null_ls.builtins.formatting.prettierd.with({
            condition = function(utils)
              return utils.root_has_file("package.json")
                  or utils.root_has_file(".prettierrc")
                  or utils.root_has_file(".prettierrc.json")
                  or utils.root_has_file(".prettierrc.js")
            end,
          }))
        end,
        eslint_d = function()
          null_ls.register(null_ls.builtins.diagnostics.eslint_d.with({
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
