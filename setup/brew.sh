/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

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

brew install -f "${apps[@]}"

./opt/homebrew/opt/fzf/install
source ~/.zshrc
