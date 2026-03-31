# Install packages

apps=(
  blockblock
  docker
  firefox
  google-chrome
  gpg-suite
  iterm2
  knockknock
  little-snitch
  rectangle
  the-unarchiver
)

brew install -f --cask "${apps[@]}"
