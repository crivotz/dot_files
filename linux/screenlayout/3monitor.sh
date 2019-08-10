#!/bin/sh
# file=/tmp/3monitor.log
# echo Running >> $file
# sleep 8
xrandr --verbose --output eDP-1 --primary --mode 1366x768 --pos 0x0 --rotate normal #>> $file 2>&1
xrandr --verbose --output DP-1 --mode 1280x1024 --pos 1366x0 --rotate normal #>> $file 2>&1
xrandr --verbose --output HDMI-1 --mode 1280x1024 --pos 2646x0 --rotate normal #>> $file 2>&1
# echo Done >> $file
