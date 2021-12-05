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

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash

eval "$(direnv hook bash)"

#. /usr/local/opt/asdf/asdf.sh
#. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
. "$HOME/.cargo/env"
