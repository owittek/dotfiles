return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.pack.rust" },
  {
    "catppuccin",
    opts = {
      integrations = {
        indent_blankline = { enabled = true, colored_indent_levels = false },
        lsp_trouble = true,
        ts_rainbow2 = true,
        treesitter = true,
        gitsigns = true,
        markdown = true,
        overseer = true,
        leap = true,
      },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    opts = {
      dir = "~/Documents/Obsidian\\ Vault",
      completion = { nvim_cmp = true },
      daily_notes = { folder = "daily" },
    },
  },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          next = "<C-;>",
          prev = "<C-'>",
        },
      },
      filetypes = { markdown = true },
    },
  },
}
