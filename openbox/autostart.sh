#!/bin/bash

## Restore Wallpaper
nitrogen --restore

## xfce4-settings daemon
xfsettingsd &

## Start Compositing Manager
exec compton -b &

## Launch Polybar
sh ~/.config/polybar/launch.sh

## Launch Plank
# exec plank &

## Start Music Player Daemon
exec mpd &

## Notification Daemon
exec dunst &

## Thunar Daemon
exec thunar --daemon &

## Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

## Enable power management
xfce4-power-manager &

## Getting Started
gs_run_once.sh

## Issue Tracker (Don't Remove IT)
issue_tracker.sh



## Do all the other shit.

## -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
## .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-

## Load and capture all the necessary windows.

## Two ranger tabs.
(alacritty -t ranger: -e ranger & exit)
(alacritty -t ranger: -e ranger & exit)
IFS=' ' read -r -a ranger_ids <<< "$(xdotool search -name 'ranger:.*' | tr '\n' ' ')"
ranger1_id=${ranger_ids[0]}
ranger2_id=${ranger_ids[1]}

## Two chrome windows.
(google-chrome-stable & exit)
(google-chrome-stable & exit)
IFS=' ' read -r -a chrome_ids <<< "$(xdotool search -name '.*Google Chrome' | tr '\n' ' ')"
chrome1_id=${chrome_ids[0]}
chrome2_id=${chrome_ids[1]}

## Discord.
(alacritty -e discord & exit)
disc_id="$(xdotool search -name 'Discord')"

## Visual Studio Code.
(code ~/Development & exit)
code_id="$(xdotool search -name '.*Visual Studio Code')"

## CMus and its helper. Start CMus first! The display helper is also taken so we can hide it.
(alacritty -e cmus & exit)
(alacritty -e ~/.config/.cmus/cmusCoversSDL/cmusCoverViewer & exit)
cmus_id="$(xdotool search -name 'cmus.*')"
aart_id="$(xdotool search -name 'Cover')"
remote_id="$(xdotool search -name 'Alacritty')"

## HTop.
(alacritty -t htop -e htop & exit)
htop_id="$(xdotool search -name 'htop.*')"

## Viewnior.
(viewnior ~/face.png & exit)
icon_id="$(xdotool search -name 'face.png.*')"

## All of the terminals.
(alacritty -t neofetch & exit)
(alacritty -t stack-1 & exit)
(alacritty -t stack-2 & exit)
neo_id="(xdotool search -name 'neofetch')"
stack1_id="(xdotool search -name 'stack-1')"
stack2_id="(xdotool search -name 'stack-1')"

## Move them.

sleep 10

## DESKTOP 1 ---------------------------
xdotool set_desktop 0

xdotool windowmove $aart_id 10 40
xdotool windowsize $aart_id 480 480

xdotool windowmove $remote_id 10 40
xdotool windowsize $remote_id 480 480
xdotool windowminimize $remote_id

xdotool windowmove $cmus_id 500 40
xdotool windowsize $cmus_id 1730 480

xdotool windowmove $icon_id 2240 40
xdotool windowsize $icon_id 480 480

xdotool windowmove $htop_id 10 530
xdotool windowsize $htop_id 900 1620

xdotool windowmove $neo_id 920 530
xdotool windowsize $neo_id 800 580

xdotool windowmove $ranger1_id 920 1120
xdotool windowsize $ranger1_id 800 1030

xdotool windowmove $ranger2_id 1730 530
xdotool windowsize $ranger2_id 990 1620

xdotool windowmove $stack1_id 2730 40
xdotool windowsize $stack1_id 1100 1045

xdotool windowmove $stack2_id 2730 1055
xdotool windowsize $stack2_id 1100 1045

## DESKTOP 2 ----------------------------
xdotool set_desktop 1

xdotool windowmove $chrome1_id 10 40
xdotool windowsize $chrome1_id 2630 2110

xdotool windowmove $disc_id 2650 40
xdotool windowsize $disc_id 1180 2110

## DESKTOP 3 ----------------------------
xdotool set_desktop 2

xdotool windowmove $code_id 10 40
xdotool windowsize $code_id 3820 2110

# done.
xdotool set_desktop 0