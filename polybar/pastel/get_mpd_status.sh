#!/bin/bash

# The name of polybar bar which houses the main spotify module and the control modules.
PARENT_BAR="left"
PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)

# Set the source audio player here.
# Players supporting the MPRIS spec are supported.
# Examples: spotify, vlc, chrome, mpv and others.
# Use `playerctld` to always detect the latest player.
# See more here: https://github.com/altdesktop/playerctl/#selecting-players-to-control

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

MPD_STATUS=$(mpc status)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS="$PLAYERCTL_STATUS"
else
    STATUS="$PLAYERCTL_STATUS"
fi

if [[ ! -z $(mpc status | grep '^volume: n/a') ]]; then
    echo ""
else
    if [[ ! -z "$(mpc status | grep 'paused')" ]]; then
        echo ""
    elif [[ ! -z "$(mpc status | grep 'stopped')" ]]; then
        echo ""
    else
        update_hooks "$PARENT_BAR_PID" 1
        artist="$(mpc current -f '%artist%')"
        title="$(mpc current -f '%title%')"
        echo " %{F#A071A6}$artist %{F-} %{F#DC2430}$title " | awk '{print toupper($0)}'
    fi
fi
