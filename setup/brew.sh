/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  age
  bash-completion2
  circleci
  coreutils
  direnv
  docker-compose
  fzf
  git
  go
  jq
  mise
  node
  postgres
  python
  ripgrep
  rust-analyzer
  scc
  tmux
  vim
  yarn
  ykman
)

brew install -f "${apps[@]}"

brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

./opt/homebrew/opt/fzf/install
source ~/.zshrc
