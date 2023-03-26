return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.motion.vim-matchup" },
  {
    "catppuccin",
    opts = {
      integrations = {
        ts_rainbow2 = true,
        lsp_trouble = true,
        leap = true,
      },
    },
  },
}
