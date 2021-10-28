theme=$(active/theme/hook.sh)

gsettings set org.gnome.desktop.interface gtk-theme ''
sleep 1
gsettings set org.gnome.desktop.interface gtk-theme $theme

for dir in $(ls /usr/share/themes/$theme); do
  ln -s /usr/share/themes/$theme/$dir $HOME/.config/theme/$dir
done

source ~/.zshrc
