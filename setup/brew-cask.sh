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
  knockknock
  little-snitch
  notion
  slack
  spotify
  the-unarchiver
  zoom
)

brew install -f --cask "${apps[@]}"
