#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in "$DOTFILES_DIR/config/.*"; do
  ln -sfv $file ~
done

. "$DOTFILES_DIR/setup/brew.sh"
. "$DOTFILES_DIR/setup/git.sh"
. "$DOTFILES_DIR/setup/npm.sh"
. "$DOTFILES_DIR/setup/bash.sh"
. "$DOTFILES_DIR/setup/bash-it.sh"
. "$DOTFILES_DIR/setup/brew-cask.sh"
. "$DOTFILES_DIR/setup/tmux.sh"
. "$DOTFILES_DIR/setup/vim.sh"
. "$DOTFILES_DIR/setup/defaults-chrome.sh"
. "$DOTFILES_DIR/setup/defaults.sh"
. "$DOTFILES_DIR/setup/dock.sh"

echo "FIN!"
