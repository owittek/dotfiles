return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  {
    "catppuccin",
    opts = {
      integrations = {
        ts_rainbow2 = true,
        lsp_trouble = true,
        -- leap = true,
      },
    },
  },
}
