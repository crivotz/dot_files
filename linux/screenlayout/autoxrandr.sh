#!/bin/bash
# if $(xrandr | grep -q "DP-1 disconnected");then
#     xrandr --output DP-1 --off --output HDMI-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output eDP-1 --mode 1366x768 --pos 2560x0 --rotate normal
# elif $(xrandr | grep -q "HDMI-3 connected");then
#     xrandr --output eDP-1 --off --output VGA-1 --primary --mode 1440x900 --pos 0x0 --rotate left --output HDMI-1 --off --output DP-1 --mode 1600x900 --pos 900x0 --rotate normal --output HDMI-2 --off --output DP-2 --off --output HDMI-3 --mode 1600x900 --pos 2500x0 --rotate normal
if $(xrandr | grep -q "DP-1-3 connected");then
    xrandr --output eDP-1 --off --output HDMI-1 --off --output DP-1 --off --output HDMI-2 --off --output DP-2 --off --output HDMI-3 --off --output DP-1-1 --mode 1440x900 --pos 0x0 --rotate left --output DP-1-2 --mode 1600x900 --pos 900x0 --rotate normal --output DP-1-3 --mode 1600x900 --pos 2500x0 --rotate normal
elif $(xrandr | grep -q "HDMI-1 connected");then
    xrandr --output HDMI-1 --mode 2560x1440 --pos 1286x0 --rotate normal --output DP-1 --off --output HDMI-2 --off --output DP-2 --primary --mode 1280x1024 --pos 0x0 --rotate normal --output HDMI-3 --off --output DP-3 --off
else
    xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP-1 --mode 1280x1024 --pos 1366x0 --rotate normal --output HDMI-1 --mode 1280x1024 --pos 2646x0 --rotate normal
fi
