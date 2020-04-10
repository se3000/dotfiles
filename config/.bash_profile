export WORKSPACE="$HOME/workspace"
export GOPATH="$WORKSPACE/go_path"
export DOTFILES_DIR="$WORKSPACE/dotfiles"

for file in "$DOTFILES_DIR"/config/*.sh; do
 [ -f $file ] && . $file
done

export BASH_IT="$HOME/.bash_it"
export BASH_IT_THEME='bobby'
unset MAILCHECK
export SCM_CHECK=true

source ~/.bashrc

tmux source-file ~/.tmux.conf

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash

[ -f "$HOME/.bash_profile.local" ] && source "$HOME/.bash_profile.local"

source "$BASH_IT"/bash_it.sh
eval "$(direnv hook bash)"

export PATH="$HOME/.cargo/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
