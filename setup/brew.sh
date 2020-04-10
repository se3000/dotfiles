ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  ack
  asdf
  bash-completion2
  bat
  circleci
  coreutils
  ctags
  dep
  direnv
  dockutil
  docker-compose
  ethereum/ethereum/solidity
  fswatch
  fzf
  git
  git-flow
  go
  grc
  grep
  hexyl
  hub
  jq
  kubectl
  lynx
  m-cli
  md5sha1sum
  npm
  postgres
  python
  ripgrep
  tmux
  travis
  watch
  vim
  wget
  wireguard-tools
  yarn
  youtube-dl
)

brew install "${apps[@]}"

. /usr/local/opt/fzf/install
source ~/.bash_profile
nvm install 10.16.3
nvm alias default node
