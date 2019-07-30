ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  ack
  bash-completion2
  bat
  build-essentials
  circleci
  coreutils
  ctags
  dep
  direnv
  dockutil
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
  nvm
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
nvm alias default node
