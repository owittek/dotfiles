return {
  settings = {
    ["rust-analyzer"] = {
      -- HACK: https://github.com/simrat39/rust-tools.nvim/issues/300
      inlayHints = { auto = false, locationLinks = false },
    },
  },
}
