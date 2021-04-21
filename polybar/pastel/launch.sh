#!/usr/bin/env bash

CONFIG="$HOME/.config/polybar/pastel/config.ini"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -c "$CONFIG" background-top &
# polybar -c "$CONFIG" background-bot &

sleep 2

polybar -c "$CONFIG" workspaces &
polybar -c "$CONFIG" title &
polybar -c "$CONFIG" stats &
polybar -c "$CONFIG" music &
polybar -c "$CONFIG" battery &
polybar -c "$CONFIG" volume &
polybar -c "$CONFIG" datetime &
