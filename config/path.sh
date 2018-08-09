prepend-path "/bin"
prepend-path "/usr/bin"
prepend-path "/usr/local/bin"
prepend-path "$GOPATH/bin"
prepend-path "$HOME/.cargo/bin"

# Remove duplicates (preserving prepended items)
# Source: http://unix.stackexchange.com/a/40755

export PATH=`echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}'`
