ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  ack
  bash-completion2
  bat
  circleci
  ctags
  dep
  direnv
  dockutil
  ethereum/ethereum/solidity
  fswatch
  fzf
  git
  go
  grc
  grep
  hub
  jq
  kubectl
  lynx
  m-cli
  md5sha1sum
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
