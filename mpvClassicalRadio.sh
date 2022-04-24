#!/bin/bash

notify-send -t 3000 --app-name="MPV" "https://live.musopen.org" "Classical Music";

url="https://live.musopen.org:8085/streamvbr0"
pkill -f $url || mpv "$url"

