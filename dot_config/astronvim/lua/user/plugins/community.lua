return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  {
    "catppuccin",
    opts = {
      integrations = {
        gitsigns = true,
        treesitter = true,
        markdown = true,
        ts_rainbow2 = true,
        lsp_trouble = true,
        leap = true,
        indent_blankline = { enabled = true, colored_indent_levels = false },
      },
    },
  },
  {
    "folke/zen-mode.nvim",
    opts = { plugins = { tmux = { enabled = true } } },
  },
}
