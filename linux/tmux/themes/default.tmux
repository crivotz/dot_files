#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=color4,bg=color8"

set -g message-style "fg=color4,bg=color8"
set -g message-command-style "fg=color4,bg=color8"

set -g pane-border-style "fg=color8"
set -g pane-active-border-style "fg=color4"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=color4,bg=default"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=color0,bg=color13,bold] #S #[fg=color4,bg=default,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=color0,bg=default,nobold,nounderscore,noitalics] #[fg=color4,bg=default] #{prefix_highlight} #[fg=color8,bg=default,nobold,nounderscore,noitalics] #[fg=color4,bg=color8] %d-%m-%Y #[fg=color4,bg=default] #[fg=color4,bg=color8] %H:%M #[fg=color4,bg=default] #[fg=color0,bg=color4,bold] #h "

setw -g window-status-activity-style "fg=color11,bg=default"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=color11,bg=default"
setw -g window-status-format "#[bg=default,fg=color0,noitalics] #[bg=color8,fg=color4] #I |>#[bg=color8,fg=color4] #{?window_zoomed_flag,#[fg=color9]|>,}#[bg=color8,fg=color4,bold]#W#[bg=color8,fg=color4,bold]#{?window_zoomed_flag,#[fg=color9]<|,} #[bg=default,fg=color0,noitalics]"
setw -g window-status-current-format "#[bg=default,fg=color0,nobold,noitalics,nounderscore] #[bg=color6,fg=color0] #I |>#[bg=color6,fg=color0,bold] #{?window_zoomed_flag,#[fg=color9]|>,}#[bg=color6,fg=color0,bold]#W#[bg=color6,fg=color0,bold]#{?window_zoomed_flag,#[fg=color9]<|,} #[bg=default,fg=color0,nobold,noitalics,nounderscore]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=color11]#[bg=default] #[fg=color0]#[bg=color11]"
set -g @prefix_highlight_output_suffix " "
