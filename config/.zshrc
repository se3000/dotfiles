export PATH=/opt/homebrew/bin:$PATH
export WORKSPACE="$HOME/workspace"
export GOPATH="$WORKSPACE/go_path"
export DOTFILES_DIR="$WORKSPACE/dotfiles"

for file in "$DOTFILES_DIR"/config/*.sh; do
 [ -f $file ] && . $file
done

tmux source-file ~/.tmux.conf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh

. "$HOME/.cargo/env"

eval "$(direnv hook zsh)"
