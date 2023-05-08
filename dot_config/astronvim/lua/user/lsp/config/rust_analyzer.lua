return {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        loadOutDirsFromCheck = true,
        features = "all",
      },
      checkOnSave = {
        command = "clippy",
      },
      procMacro = {
        enable = true,
      },
      experimental = {
        procAttrMacros = true,
      },
    },
  },
}
