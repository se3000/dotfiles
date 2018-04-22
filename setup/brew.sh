ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  ack
  bash-completion2
  direnv
  dockutil
  fzf
  git
  go
  grc
  grep
  hub
  lynx
  m-cli
  npm
  python
  reflex
  rbenv
  seattle-beach/tap/git-together
  tmux
  travis
  watch
  vim
  wget
  yarn
  youtube-dl
)

brew install "${apps[@]}"
