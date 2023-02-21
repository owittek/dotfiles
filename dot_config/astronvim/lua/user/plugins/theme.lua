return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    dim_inactive = { enabled = true, percentage = 0.25 },
    integrations = {
      aerial = true,
      dap = { enabled = true, enable_ui = true },
      mason = true,
      neotree = true,
      which_key = true,
    },
  },
}
