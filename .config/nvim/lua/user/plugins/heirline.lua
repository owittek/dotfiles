return {
  "rebelot/heirline.nvim",
  opts = function(_, opts)
    opts.statusline = {
      hl = { fg = "fg", bg = "bg" },
      astronvim.status.component.mode {
        mode_text = { padding = { left = 1, right = 1 } },
      },
      astronvim.status.component.git_branch(),
      astronvim.status.component.file_info {
        filetype = {},
        filename = false,
        file_modified = false,
      },
      astronvim.status.component.git_diff(),
      astronvim.status.component.diagnostics(),
      astronvim.status.component.fill(),
      astronvim.status.component.cmd_info(),
      astronvim.status.component.fill(),
      astronvim.status.component.lsp(),
      astronvim.status.component.treesitter(),
      astronvim.status.component.nav(),
    }
    return opts
  end,
}
