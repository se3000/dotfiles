#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/symlinks/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/symlinks/.inputrc" ~
ln -sfv "$DOTFILES_DIR/symlinks/.gemrc" ~
ln -sfv "$DOTFILES_DIR/symlinks/.vimrc.local" ~
ln -sfv "$DOTFILES_DIR/symlinks/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/symlinks/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/symlinks/.git-together" ~

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/bash-it.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/vim.sh"
