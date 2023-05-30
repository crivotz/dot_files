#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#7aa2f7,bg=#3b4261"

set -g message-style "fg=#7aa2f7,bg=#3b4261"
set -g message-command-style "fg=#7aa2f7,bg=#3b4261"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#7aa2f7"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#7aa2f7,bg=#24283b"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#24283b,bg=#bb9af7,bold] #S #[fg=#7aa2f7,bg=#24283b,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#24283b,bg=#24283b,nobold,nounderscore,noitalics] #[fg=#7aa2f7,bg=#24283b] #{prefix_highlight} #[fg=#3b4261,bg=#24283b,nobold,nounderscore,noitalics] #[fg=#7aa2f7,bg=#3b4261] %d-%m-%Y #[fg=#7aa2f7,bg=#24283b] #[fg=#7aa2f7,bg=#3b4261] %H:%M #[fg=#7aa2f7,bg=#24283b] #[fg=#24283b,bg=#7aa2f7,bold] #h "

setw -g window-status-activity-style "fg=#a9b1d6,bg=#24283b"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9b1d6,bg=#24283b"
setw -g window-status-format "#[bg=#24283b,fg=#24283b,noitalics] #[bg=#3b4261,fg=#7aa2f7] #I |>#[bg=#3b4261,fg=#7aa2f7] #{?window_zoomed_flag,#[fg=#f7768e]|>,}#[bg=#3b4261,fg=#7aa2f7,bold]#W#[bg=#3b4261,fg=#7aa2f7,bold]#{?window_zoomed_flag,#[fg=#f7768e]<|,} #[bg=#24283b,fg=#24283b,noitalics]"
setw -g window-status-current-format "#[bg=#24283b,fg=#24283b,nobold,noitalics,nounderscore] #[bg=#7dcfff,fg=#24283b] #I |>#[bg=#7dcfff,fg=#24283b,bold] #{?window_zoomed_flag,#[fg=#f7768e]|>,}#[bg=#7dcfff,fg=#24283b,bold]#W#[bg=#7dcfff,fg=#24283b,bold]#{?window_zoomed_flag,#[fg=#f7768e]<|,} #[bg=#24283b,fg=#24283b,nobold,noitalics,nounderscore]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#24283b] #[fg=#24283b]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix " "
