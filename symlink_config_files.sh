#!/usr/bin/env bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${ZSH_SOURCE[0]}" )" && pwd )"

echo "symlinking config files..."

# symlink dot files
for file in "$DOTFILES_DIR/config/.*"; do
  [[ $file == *.example ]] && continue
  ln -sfv $file ~
done

ln -sfv "$DOTFILES_DIR/config/CLAUDE.md" ~
