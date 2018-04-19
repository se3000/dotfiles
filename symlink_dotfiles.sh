#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "symlinking dotfiles..."

for file in "$DOTFILES_DIR/config/.*"; do
  ln -sfv $file ~
done
