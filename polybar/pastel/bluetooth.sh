#!/usr/bin/env zsh

STATUS="$(bluetoothctl info)"

if [ ! -z "$(echo $STATUS | grep "Missing")" ]; then
  echo '%{F#747070 B#202024}                        %{F- B-}'
else
  echo '%{F#D4D0D0 B#1060CE}                        %{F- B-}'
fi
