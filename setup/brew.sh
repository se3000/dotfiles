ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  ack
  bash-completion2
  ctags
  dep
  direnv
  dockutil
  fswatch
  fzf
  git
  go
  grc
  grep
  heroku
  hub
  kubectl
  lynx
  m-cli
  npm
  postgres
  python
  rbenv
  ripgrep
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

. /usr/local/opt/fzf/install
