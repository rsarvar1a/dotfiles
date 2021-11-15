#!/bin/sh

BAR_HEIGHT=50  # polybar height
BORDER_SIZE=0  # border size from your wm settings
YAD_WIDTH=384  # 222 is minimum possible value
YAD_HEIGHT=192 # 193 is minimum possible value
DATE="$(date +"%H:%M  %b %d, %Y")"

case "$1" in
--popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi

    pos_x=76
    pos_y=52

    yad --calendar --undecorated --close-on-unfocus --no-buttons \
        --width="$YAD_WIDTH" --height="$YAD_HEIGHT" --posx="$pos_x" --posy="$pos_y" \
        --title="yad-calendar" --borders=0 >/dev/null &
    ;;
*)
    echo "$DATE"
    ;;
esac
