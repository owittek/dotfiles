return {
  root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
  settings = {
    deno = {
      inlayHints = {
      parameterNames = {
        enabled = "all"
        },
        parameterTypes = {
          enabled = true
         },
        variableTypes = {
          enabled = true
        },
        propertyDeclarationTypes = {
          enabled = true
        },
        functionLikeReturnTypes = {
          enabled = true
        },
        enumMemberValues = {
          enabled = true
        },
      }
    }
  }
}
