#!/usr/bin/env bash

CONFIGPATH="/.config/polybar/darktransparent/config.ini" 

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -c "$HOME/$CONFIGPATH" left &
polybar -c "$HOME/$CONFIGPATH" cpu &
polybar -c "$HOME/$CONFIGPATH" memory &
polybar -c "$HOME/$CONFIGPATH" temp &
polybar -c "$HOME/$CONFIGPATH" polyunder &
sleep 1
polybar -c "$HOME/$CONFIGPATH" polywin &
polybar -c "$HOME/$CONFIGPATH" spacer &
polybar -c "$HOME/$CONFIGPATH" spacer2 &
