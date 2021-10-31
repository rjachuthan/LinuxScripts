#!/bin/sh
xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal
. ~/.config/polybar/launch.sh
wal -R
