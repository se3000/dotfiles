#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in "$DOTFILES_DIR/symlinks/*"; do
  ln -sfv $file ~
done

for file in "$DOTFILES_DIR/macos/*"; do
  [[ -r $file ]] && . $file;
done

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/git.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/bash-it.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/tmux.sh"
. "$DOTFILES_DIR/install/vim.sh"

echo "FIN!"
