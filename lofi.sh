#!/usr/bin/env sh
# Stream audio and video from lofi hip hop radio

url='https://youtu.be/5qap5aO4i9A'
quality=92
title='lofi hip hop radio'

youtube-dl -f $quality -o - "$url" | ffplay -window_title "$title" -i -
