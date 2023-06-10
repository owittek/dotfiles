return {
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
        extraArgs = { "--no-deps" },
      },
      procMacro = {
        enable = true,
      },
      inlayHints = {
        locationLinks = false,
      },
    },
  },
}
