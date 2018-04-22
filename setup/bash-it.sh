export LANG=en_US.UTF-8

rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
cp "$DOTFILES_DIR/config/bobby_hill.theme" ~/.bash_it/themes/bobby/bobby.theme.bash
source ~/.bash_profile
bash-it enable completion git
bash-it enable plugin ssh
bash-it enable completion ssh
