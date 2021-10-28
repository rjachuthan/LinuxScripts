#!/bin/bash

display_player_prefix=( "spotify:"
                        "firefox:"
                        "mpv:" )

STATUS=""
TITLE=""
ARTIST=""

for APP in "${display_player_prefix[@]}" ; do
  STATUS=$(playerctl --player "${APP%%:*}" status)
  printf "%s - Status = %s.\n" "$APP" "$STATUS"

  if [[ -z $STATUS ]]; then
    TITLE="No Video"
    ARTIST=""
  else
    TITLE=$(playerctl --player "${APP%%:*}" metadata -f "{{ xesam:title }}")
    ARTIST=$(playerctl --player "${APP%%:*}" metadata -f "{{ xesam:artist }}")
  fi

done

printf "================\n"
printf "%s is %s -> %s\n" "$TITLE" "$STATUS" "$ARTIST"

