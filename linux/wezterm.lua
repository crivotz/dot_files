local wezterm = require 'wezterm';

return {
  font = wezterm.font("JetBrainsMono Nerd Font"),
  color_scheme = "Gruvbox-material",
  color_schemes = {
    ["Gruvbox-material"]={
      foreground = "#e2d3ba",
      background = "#282828",
      cursor_bg = "#e2d3ba",
      cursor_fg = "#282828",
      cursor_border = "#e2d3ba",
      selection_bg = "#655b53",
      selection_fg = "#e2d3ba",
      scrollbar_thumb = "#32302f",
      split = "#928374",

      ansi = {"#282828", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98"},
      brights = {"#928374", "#ef938e", "#bbc585", "#e1bb7e", "#9dc2ba", "#e1acbb", "#a7c7a2", "#e2d3ba"},
    },
    ["Tokyonight-storm"]={
      foreground = "#c0caf5",
      background = "#24283b",
      cursor_bg = "#c0caf5",
      cursor_border = "#c0caf5",
      cursor_fg = "#24283b",
      selection_bg = "#364a82",
      selection_fg = "#c0caf5",

      ansi = {"#1d202f", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6"},
      brights = {"#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5"},
    },
    ["Tokyonight-night"]={
      foreground = "#c0caf5",
      background = "#1a1b26",
      cursor_bg = "#c0caf5",
      cursor_border = "#c0caf5",
      cursor_fg = "#1a1b26",
      selection_bg = "#33467c",
      selection_fg = "#c0caf5",

      ansi = {"#15161e", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6"},
      brights = {"#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5"},
    },
  },
  window_padding = {
    left = 10,
    right = 5,
    top = 10,
    bottom = 5,
  },
  check_for_updates = false, -- since it's installed by zinit, let zinit manage its updates.
  font_size = 11,
  line_height = 1.1,
  enable_tab_bar = false,
}
