#!/usr/bin/env sh
# Stream audio and video from lofi hip hop radio

url='https://youtu.be/5qap5aO4i9A'
title='lofi hip hop radio'

# ffplay seems to be lagging on my machine
# quality=92
# youtube-dl -f $quality -o - "$url" | ffplay -window_title "$title" -i -

notify-send -t 3000 --app-name="$title" "Now Playing"
mpv --speed=1 --ytdl-format="[height<=?800]" "$url"
