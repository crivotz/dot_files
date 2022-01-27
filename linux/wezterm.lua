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
    }
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
