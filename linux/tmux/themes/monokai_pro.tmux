#!/usr/bin/env bash

# MonokaiPro colors for Tmux
 white='#fcfcfa'
  black='#363537'
  gray='#727072'
  red='#ff6188'
  green='#a9dc76'
  yellow='#ffd866'
  blue='#78dce8'
  magenta='#fc9867'
  cyan='#ab9df2'

set -g mode-style "fg=#78dce8,bg=#363537"

set -g message-style "fg=#78dce8,bg=#363537"
set -g message-command-style "fg=#78dce8,bg=#363537"

set -g pane-border-style "fg=#363537"
set -g pane-active-border-style "fg=#78dce8"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#78dce8,bg=#363537"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#363537,bg=#a9dc76,bold] #S #[fg=#363537,bg=#363537,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#363537,bg=#363537,nobold,nounderscore,noitalics] #[fg=#fcfcfa,bg=#363537] #{prefix_highlight} #[fg=#363537,bg=#363537,nobold,nounderscore,noitalics] #[fg=#363537,bg=#ffd866] %d-%m-%Y #[fg=#363537,bg=#363537] #[fg=#363537,bg=#fc9867] %H:%M #[fg=#363537,bg=#363537] #[fg=#363537,bg=#a9dc76,bold] #h "

setw -g window-status-activity-style "fg=#a9dc76,bg=#363537"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9dc76,bg=#363537"
setw -g window-status-format "#[bg=#363537,fg=#363537,noitalics] #[bg=#727072,fg=#fcfcfa] #I |>#[bg=#727072,fg=#fcfcfa] #{?window_zoomed_flag,#[fg=#ff6188]|>,}#[bg=#727072,fg=#fcfcfa,bold]#W#[bg=#727072,fg=#fcfcfa,bold]#{?window_zoomed_flag,#[fg=#ff6188]<|,} #[bg=#363537,fg=#363537,noitalics]"
setw -g window-status-current-format "#[bg=#363537,fg=#363537,nobold,noitalics,nounderscore] #[bg=#fcfcfa,fg=#363537] #I |>#[bg=#fcfcfa,fg=#363537,bold] #{?window_zoomed_flag,#[fg=#ff6188]|>,}#[bg=#fcfcfa,fg=#363537,bold]#W#[bg=#fcfcfa,fg=#363537,bold]#{?window_zoomed_flag,#[fg=#ff6188]<|,} #[bg=#363537,fg=#363537,nobold,noitalics,nounderscore]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ffd866]#[bg=#363537] #[fg=#363537]#[bg=#ffd866]"
set -g @prefix_highlight_output_suffix " "
