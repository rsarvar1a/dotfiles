cd ~/.config/rofi

rm *.rasi

for f in `ls ~/.config/rofi/$(cat theme)`; do
  ln -s ~/.config/rofi/$(cat theme)/$f $f
done
