#!/usr/bin/env bash

{

CONFIG="$HOME/.config/polybar/pastel/config.ini"
CMDARGS="--log=trace -c"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar &>/dev/null; do sleep 1; done

# Launch the bar

polybar $CMDARGS "$CONFIG" background-top  &
polybar $CMDARGS "$CONFIG" background-bot  &

sleep 2

polybar $CMDARGS "$CONFIG" cpu  &
polybar $CMDARGS "$CONFIG" mem  &
polybar $CMDARGS "$CONFIG" temp  &
polybar $CMDARGS "$CONFIG" music  &
polybar $CMDARGS "$CONFIG" battery  &
polybar $CMDARGS "$CONFIG" volume  &
polybar $CMDARGS "$CONFIG" network  &
polybar $CMDARGS "$CONFIG" datetime  &
polybar $CMDARGS "$CONFIG" disk  &
polybar $CMDARGS "$CONFIG" polywin  &
polybar $CMDARGS "$CONFIG" uptime  &
polybar $CMDARGS "$CONFIG" bluetooth &
polybar $CMDARGS "$CONFIG" gmail &
polybar $CMDARGS "$CONFIG" launch  &
polybar $CMDARGS "$CONFIG" power  &
polybar $CMDARGS "$CONFIG" workspaces &
}
