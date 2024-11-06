#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=color4,bg=#3b4261"

set -g message-style "fg=color4,bg=#3b4261"
set -g message-command-style "fg=color4,bg=#3b4261"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=color4"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=color4,bg=default"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=color9,bg=default,bold]  #[fg=color4,bg=default,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=color0,bg=color9,bold] OVERMIND "

setw -g window-status-activity-style "fg=color7,bg=default"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=color7,bg=default"
setw -g window-status-format "#[bg=default,fg=color0,noitalics] #[bg=default,fg=color4] #I ▷#[bg=default,fg=color4] #{?window_zoomed_flag,#[fg=color9]▷,}#[bg=default,fg=color4,bold]#W#[bg=default,fg=color4,bold]#{?window_zoomed_flag,#[fg=color9]◁,} #[bg=default,fg=color0,noitalics]"
setw -g window-status-current-format "#[bg=default,fg=color0,nobold,noitalics,nounderscore] #[bg=default,fg=color9] #I ▷#[bg=default,fg=color9,bold] #{?window_zoomed_flag,#[fg=color9]▷,}#[bg=default,fg=color9,bold]#W#[bg=default,fg=color9,bold]#{?window_zoomed_flag,#[fg=color9]◁,} #[bg=default,fg=color0,nobold,noitalics,nounderscore]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=color3]#[bg=default] #[fg=color0]#[bg=color3]"
set -g @prefix_highlight_output_suffix " "
