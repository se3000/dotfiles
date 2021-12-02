ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages

apps=(
  asdf
  bash-completion2
  circleci
  coreutils
  direnv
  docker-compose
  fzf
  git
  github/gh/gh
  go
  grc
  grep
  jq
  postgres
  python
  ripgrep
  tmux
  vim
  yarn
  ykman
)

brew install "${apps[@]}"

. /usr/local/opt/fzf/install
source ~/.bash_profile
