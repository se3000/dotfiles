export WORKSPACE="$HOME/workspace"
export GOPATH="$WORKSPACE/go_path"

DOTFILES_DIR="$WORKSPACE/dotfiles"
PATH="$DOTFILES_DIR/bin:$PATH"
for DOTFILE in "$DOTFILES_DIR"/system/.{function,path,env,alias,grep,custom}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

if [ -f "$HOME/.bash_profile.local" ]; then
  source "$HOME/.bash_profile.local"
fi
unset DOTFILE
export DOTFILES_DIR

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

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
