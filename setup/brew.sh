ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
  travis
  watch
  vim
  wget
  yarn
)

brew install "${apps[@]}"
