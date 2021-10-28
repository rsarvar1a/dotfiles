#!/usr/bin/env zsh

STATUS="$(bluetoothctl info)"

if [ ! -z "$(echo $STATUS | grep "Missing")" ]; then
  echo '%{F#747070}  NONE %{F- B-}'
else
  name=$(bluetoothctl info | grep 'Name:' | grep -o ' .*' | cut -c 1-5)
  echo '%{F#6080C0} ' ${name} '%{F- B-}'
fi
