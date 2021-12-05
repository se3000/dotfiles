# Install packages

apps=(
  aws-vault
  blockblock
  discord
  docker
  firefox
  rowanj-gitx
  google-chrome
  gpg-suite
  hammerspoon
  iterm2
  keybase
  knockknock
  little-snitch
  notion
  slack
  spotify
  the-unarchiver
)

brew install -f --cask "${apps[@]}"
