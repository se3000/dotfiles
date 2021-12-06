export PATH=/opt/homebrew/bin:$PATH
export WORKSPACE="$HOME/workspace"
export GOPATH="$WORKSPACE/go_path"
export DOTFILES_DIR="$WORKSPACE/dotfiles"

for file in "$DOTFILES_DIR"/config/*.sh; do
 [ -f $file ] && . $file
done

#export BASH_IT_THEME='bobby'
unset MAILCHECK
export SCM_CHECK=true

tmux source-file ~/.tmux.conf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook bash)"

#. /usr/local/opt/asdf/asdf.sh
#. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
. "$HOME/.cargo/env"
autoload -Uz compinit && compinit -u
