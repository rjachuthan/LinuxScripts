#!/bin/sh
xrandr --output eDP-1 --mode 1366x768 --pos 0x0 --rotate normal --output HDMI-1 --off
. ~/.config/polybar/launch.sh
wal -R
