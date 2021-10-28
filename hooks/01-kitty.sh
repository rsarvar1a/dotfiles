
for pid in `ps -C kitty | grep -Eo '^[0-9]+'`; do
#
  kitty @ focus-window --match pid:$pid --no-response
  kitty @ set-background-image --match pid:$pid ~/.config/kitty/btile.png 
  kitty @ set-colors --match pid:$pid ~/.config/kitty/kitty.conf
#
done
