export WORKSPACE="$HOME/workspace"
export GOPATH="$WORKSPACE/go_path"
export DOTFILES_DIR="$WORKSPACE/dotfiles"

for file in "$DOTFILES_DIR"/config/*.sh; do
  . $file
done

export BASH_IT="$HOME/.bash_it"
export BASH_IT_THEME='bobby'
unset MAILCHECK
export SCM_CHECK=true

source ~/.bashrc
source "$BASH_IT"/bash_it.sh

eval "$(direnv hook bash)"
eval "$(rbenv init -)"
tmux source-file ~/.tmux.conf

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /Users/steve/.travis/travis.sh ] && source /Users/steve/.travis/travis.sh
[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash

[ -f "$HOME/.bash_profile.local" ] && source "$HOME/.bash_profile.local"
