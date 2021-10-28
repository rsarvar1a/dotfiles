#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -c "$HOME"/.config/polybar/darktransparent/config.ini left &
polybar -c "$HOME"/.config/polybar/darktransparent/config.ini cpu &
polybar -c "$HOME"/.config/polybar/darktransparent/config.ini memory &
polybar -c "$HOME"/.config/polybar/darktransparent/config.ini temp &
#polybar -c "$HOME"/.config/polybar/darktransparent/config.ini polyunder &
sleep 1
#polybar -c "$HOME"/.config/polybar/darktransparent/config.ini polywin &
#polybar -c "$HOME"/.config/polybar/darktransparent/config.ini spacer &
polybar -c "$HOME"/.config/polybar/darktransparent/config.ini spacer2 &
