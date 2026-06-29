# Managed in se3000/dotfiles — edit there, not here. Machine-specific settings go in ~/.zshenv.local.

export WORKSPACE="$HOME/workspace"
export DOTFILES_DIR="$WORKSPACE/dotfiles"
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$PATH:$GOPATH:$GOPATH/bin"
. "$HOME/.cargo/env"

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
