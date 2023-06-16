local wezterm = require "wezterm"
return {
  hyperlink_rules = wezterm.default_hyperlink_rules(),
  font = wezterm.font_with_fallback {
    "JetBrainsMono Nerd Font",
    "Symbols Nerd Font Mono",
  },
  font_size = 13,
  color_scheme = "Catppuccin Mocha",
  hide_tab_bar_if_only_one_tab = true,
  window_close_confirmation = "NeverPrompt",
  window_background_opacity = 0.9,
  macos_window_background_blur = 5,
  window_padding = {
    left = "0cell",
    right = "0cell",
    top = "0.5cell",
    bottom = "0cell",
  },
  window_decorations = "RESIZE",
  audible_bell = "Disabled",
  keys = {
    {
      key = "f",
      mods = "CTRL|CMD",
      action = wezterm.action.ToggleFullScreen,
    },
  },
}
