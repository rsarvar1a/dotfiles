
if [[ -z $1 ]]; then
  echo 'Usage: ./apply.sh <theme>'
  exit 1
fi
theme=$1

echo -e "\033[4mApplying theme:\033[0m"

# Link the default configuration pieces.
for dir in $(ls -D themes/default); do
#
  echo -e "\t- Applying default/$dir ..."
  rm active/$dir
  ln -s $PWD/themes/default/$dir active/$dir
#
done

# Link the added configuration pieces.
for dir in $(cat themes/links); do
#
  echo -e "\t- Applying $theme/$dir ..."
  rm active/$dir
  ln -s $PWD/themes/$theme/$dir active/$dir
#
done

echo -e "\n\033[4mLinking configuration into ~/.config:\033[0m"

# Link the configuration to the user's config dir.
for dir in $(ls -D active); do
#
  echo -e "\t- Linking configuration for \033[3m$dir \033[0m..."
  rm ~/.config/$dir
  ln -s $PWD/active/$dir $HOME/.config/
#
done

echo -e "\n\033[4mRunning post-configuration hooks:\033[0m"

# Run post-configuration hooks.
for script in $(ls hooks); do
  echo -e "\t- Running \033[3m$script \033[0m..."
  zsh hooks/$script &> /dev/null
done
