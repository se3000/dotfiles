prepend-path "/bin"
prepend-path "/usr/bin"
prepend-path "/usr/local/bin"
prepend-path "$DOTFILES_BREW_PREFIX_COREUTILS/libexec/gnubin"
prepend-path "$DOTFILES_DIR/bin"
prepend-path "$HOME/bin"
prepend-path "$HOME/.cargo/bin:$PATH"
prepend-path "$GOPATH/bin:$PATH"

# Remove duplicates (preserving prepended items)
# Source: http://unix.stackexchange.com/a/40755

PATH=`echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`

# Wrap up

export PATH
