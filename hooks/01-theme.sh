theme=$(active/theme/hook.sh)

gsettings set org.gnome.desktop.interface gtk-theme '' && sleep 0.5
gsettings set org.gnome.desktop.interface gtk-theme $theme

for dir in $(ls /usr/share/themes/$theme); do
  ln -s /usr/share/themes/$theme/$dir $HOME/.config/theme/$dir
done

xfconf-query -c xsettings -p /Net/ThemeName -s "$theme"

(
while [ -e ~/.config/theme/type ]; do
  touch ~/.config/theme/type
  sleep 10
done
) &
