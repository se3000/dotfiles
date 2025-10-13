/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew upgrade

# Install packages

apps=(
  ag
  asdf
  bash-completion2
  circleci
  coreutils
  direnv
  docker-compose
  fzf
  git
  go
  jq
  postgres
  python
  ripgrep
  rust-analyzer
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
