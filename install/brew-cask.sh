if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  dropbox
  firefox
  flux
  google-chrome
  macdown
  virtualbox
  vlc
)

brew cask install "${apps[@]}"
