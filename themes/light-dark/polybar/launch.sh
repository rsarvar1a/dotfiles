#!/bin/zsh

CONFIG="$HOME/.config/polybar/config.ini"
CMDARGS="-c"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar &>/dev/null; do sleep 1; done

# Launch the bar

for mon in eDP1 DP1
do
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" background-top &
  sleep 0.5
  # MONITOR="$mon" polybar $CMDARGS "$CONFIG" systray &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" cpu &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" mem &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" temp &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" music &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" battery &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" volume &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" network &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" datetime &
  # MONITOR="$mon" polybar $CMDARGS "$CONFIG" polywin &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" bluetooth &
  MONITOR="$mon" polybar $CMDARGS "$CONFIG" workspaces &
done
