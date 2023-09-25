return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        indent_blankline = { enabled = true, colored_indent_levels = false },
        dap = { enabled = true, enable_ui = true },
        rainbow_delimiters = true,
        semantic_tokens = true,
        lsp_trouble = true,
        treesitter = true,
        telescope = true,
        which_key = true,
        gitsigns = true,
        markdown = true,
        overseer = true,
        neotree = true,
        aerial = true,
        notify = true,
        mason = true,
        noice = true,
        leap = true,
        mini = true,
        cmp = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            information = { "italic" },
            warnings = { "italic" },
            errors = { "italic" },
            hints = { "italic" },
          },
          underlines = {
            information = { "underline" },
            warnings = { "underline" },
            errors = { "underline" },
            hints = { "underline" },
          },
        },
      },
    },
  },
  {
    "epwalsh/obsidian.nvim",
    opts = {
      dir = "~/Documents/obsidian-vault",
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
  {
    "noice.nvim",
    dependencies = {
      {
        "rcarriga/nvim-notify",
        opts = {
          renderer = "wrapped-compact",
          stages = "fade",
          timeout = 500,
          fps = 120,
        },
      },
    },
    opts = {
      messages = { enabled = true },
      cmdline = {
        view = "cmdline",
        format = {
          search_down = { view = "cmdline" },
          search_up = { view = "cmdline" },
          filter = { pattern = "^:%s*!", icon = "$ ", ft = "sh" },
          IncRename = {
            pattern = "^:%s*IncRename%s+",
            icon = " ",
            conceal = true,
          },
        },
      },
      views = {
        cmdline_popup = {
          border = { style = "none", padding = { 1, 2 } },
          win_options = {
            winblend = 5,
            winhighlight = {
              Normal = "NormalFloat",
              FloatBorder = "NoiceCmdlinePopupBorder",
              IncSearch = "",
              Search = "",
            },
            cursorline = false,
          },
        },
      },
      popupmenu = {
        enabled = true,
      },
      routes = {
        { view = "notify", filter = { event = "msg_showmode" } },
        { filter = { event = "msg_show", find = "%d+L, %d+B" }, view = "mini" },
        {
          view = "cmdline_output",
          filter = { cmdline = "^:", min_height = 5 },
          -- BUG: will be fixed after https://github.com/neovim/neovim/issues/21044 gets merged
        },
        { filter = { event = "msg_show", kind = "", find = "written" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "go up one level" }, opts = { skip = true } },
        { filter = { event = "msg_show", kind = "search_count" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "; before #" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "; after #" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = " lines, " }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "yanked" }, opts = { skip = true } },
        { filter = { find = "waiting for cargo metadata" }, opts = { skip = true } },
        { filter = { find = "No active Snippet" }, opts = { skip = true } },
      },
      presets = {
        inc_rename = true,
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = "rounded",
      },
    },
  },
  {
    "stevearc/oil.nvim",
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil" },
    },
  },
}
