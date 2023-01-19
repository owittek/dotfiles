return {
  "nvim-neo-tree/neo-tree.nvim",
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_by_name = {
        "node_modules",
      },
      never_show = {
        ".DS_Store",
        "thumbs.db",
      },
    },
  },
}
