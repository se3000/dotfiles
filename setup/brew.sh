ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  ag
  ack
  bash-completion2
  bash
  coreutils
  direnv
  dockutil
  fzf
  git
  go
  grc
  grep
  hub
  lynx
  mackup
  npm
  python
  rbenv
  seattle-beach/tap/git-together
  tmux
  watch
  vim
  wget
  yarn
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"
