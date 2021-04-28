#!/bin/bash

# The name of polybar bar which houses the main spotify module and the control modules.
PARENT_BAR="left"
PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)

# Set the source audio player here.
# Players supporting the MPRIS spec are supported.
# Examples: spotify, vlc, chrome, mpv and others.
# Use `playerctld` to always detect the latest player.
# See more here: https://github.com/altdesktop/playerctl/#selecting-players-to-control
PLAYERS="playerctld -l"

# Format of the information displayed
# Eg. {{ artist }} - {{ album }} - {{ title }}
# See more attributes here: https://github.com/altdesktop/playerctl/#printing-properties-and-metadata

# Sends $2 as message to all polybar PIDs that are part of $1
update_hooks() {
    while IFS= read -r id
    do
        polybar-msg -p "$id" hook spotify-play-pause $2 1>/dev/null 2>&1
    done < <(echo "$1")
}

EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
	for player in $(playerctl -l); do
		STATUS="$(playerctl --player=$player status)"
		if [[ "$STATUS" == "Playing" ]]; then 
			PLAYER="$player"
			break
		fi
	done
else
    STATUS=""
fi

if [ "$1" == "--status" ]; then
    echo ""
else
    if [ "$STATUS" = "Playing" ]; then
				update_hooks "$PARENT_BAR_PID" 1
				artist="$(playerctl --player=$PLAYER metadata --format "{{ artist }}") %{F#505050}-"
				title="$(playerctl --player=$PLAYER metadata --format "{{ title }}")"
				if [ "$PLAYER " =~ 'chrome*' ]; then
					prefix=""
					artist=""
				fi
				if [ "$PLAYER " =~ 'vlc' ]; then
					prefix=""
					artist=""
				fi
				if [ "$PLAYER " =~ 'spotify' ]; then
					prefix=""
				fi
				echo "$prefix %{F#8080d0}$artist %{F#e0e0e0}$title"
		else
				echo ""
		fi
fi
