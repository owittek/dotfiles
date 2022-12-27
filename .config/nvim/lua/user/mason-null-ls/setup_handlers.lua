return {
  prettierd = function()
    require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with({
      condition = function(utils)
        return utils.root_has_file("package.json") or utils.root_has_file(".prettierrc") or
            utils.root_has_file(".prettierrc.json") or utils.root_has_file(".prettierrc.js")
      end
    }))
  end,
  eslint_d = function()
    require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file("package.json") or utils.root_has_file(".eslintrc.json") or
            utils.root_has_file(".eslintrc.js")
      end
    }))
  end,
}
