#!/bin/bash
if $(xrandr | grep -q "DP-1 disconnected");then
    xrandr --output DP-1 --off --output HDMI-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output eDP-1 --mode 1366x768 --pos 2560x0 --rotate normal
else
    xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output DP-1 --mode 1280x1024 --pos 1366x0 --rotate normal --output HDMI-1 --mode 1280x1024 --pos 2646x0 --rotate normal
fi
