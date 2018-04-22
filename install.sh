#!/usr/bin/env bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DOTFILES_DIR

. "$DOTFILES_DIR/symlink_dotfiles.sh"

. "$DOTFILES_DIR/setup/bash-it.sh"
. "$DOTFILES_DIR/setup/brew.sh"
. "$DOTFILES_DIR/setup/git.sh"
. "$DOTFILES_DIR/setup/npm.sh"
. "$DOTFILES_DIR/setup/brew-cask.sh"
. "$DOTFILES_DIR/setup/tmux.sh"
. "$DOTFILES_DIR/setup/vim.sh"
. "$DOTFILES_DIR/setup/defaults-chrome.sh"
. "$DOTFILES_DIR/setup/dock.sh"
. "$DOTFILES_DIR/setup/defaults.sh"

launchctl bootout user/$(id -u $(whoami))
