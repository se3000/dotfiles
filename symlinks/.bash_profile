DOTFILES_DIR="$HOME/workspace/dotfiles"
PATH="$DOTFILES_DIR/bin:$PATH"
for DOTFILE in "$DOTFILES_DIR"/system/.{function,path,env,alias,grep,custom}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

if [ -f "$HOME/.bash_profile.local" ]; then
  source "$HOME/.bash_profile.local"
fi

# Clean up

unset DOTFILE EXTRAFILE

# Export

export DOTFILES_DIR DOTFILES_EXTRA_DIR

export BASH_IT="$HOME/.bash_it"
export BASH_IT_THEME='bobby'
unset MAILCHECK
export SCM_CHECK=true
source "$BASH_IT"/bash_it.sh

eval "$(direnv hook bash)"
eval "$(rbenv init -)"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export GOPATH="$HOME/workspace/go_path"
