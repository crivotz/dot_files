#!/usr/bin/env bash

# Gruvbox-material colors for Tmux


set -g message-style bg=colour239,fg=colour223 # bg=bg2, fg=fg1
set -g message-command-style bg=colour239,fg=colour223 # bg=fg3, fg=bg1

set -g pane-border-style fg=colour237 #bg1
set -g pane-active-border-style fg=colour250 #fg2

set -g status "on"
set -g status-justify "left"

set -g status-style bg=colour000,fg=colour223 # bg=bg1, fg=fg1

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[bg=colour003,fg=colour239, bold] #S #[bg=colour001,fg=colour000,nobold,noitalics,nounderscore]"
set -g status-right "#[bg=colour000,fg=colour000, bold, nounderscore, noitalics] #{prefix_highlight} #[bg=colour000,fg=colour000, bold, nounderscore, noitalics] #[bg=colour007,fg=colour239, bold] %d-%m-%Y #[bg=colour000,fg=colour000, bold, nounderscore, noitalics] #[bg=colour007,fg=colour239, bold] %H:%M #[bg=colour000,fg=colour000,nobold,noitalics,nounderscore] #[bg=colour004,fg=colour239, bold] #h "

setw -g window-status-activity-style bg=colour237,fg=colour248 # bg=bg1, fg=fg3
setw -g window-status-separator ""
setw -g window-status-style bg=colour001,fg=colour237 # fg=bg1
setw -g window-status-format "#[bg=colour000,fg=colour000,noitalics] #[bg=colour239,fg=colour223] #I |>#[bg=colour239,fg=colour223] #{?window_zoomed_flag,#[fg=colour001]|>,}#[bg=colour239,fg=colour223,bold]#W#[bg=colour239,fg=colour223,bold]#{?window_zoomed_flag,#[fg=colour001]<|,} #[bg=colour000,fg=colour000,noitalics]"
setw -g window-status-current-format "#[bg=colour000,fg=colour000,nobold,noitalics,nounderscore] #[bg=colour006,fg=colour239] #I |>#[bg=colour006,fg=colour239,bold] #{?window_zoomed_flag,#[fg=colour001]|>,}#[bg=colour006,fg=colour239,bold]#W#[bg=colour006,fg=colour239,bold]#{?window_zoomed_flag,#[fg=colour001]<|,} #[bg=colour000,fg=colour000,nobold,noitalics,nounderscore]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#1f2335] #[fg=#1f2335]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix " "
