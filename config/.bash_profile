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

eval "$(rbenv init -)"
tmux source-file ~/.tmux.conf

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /Users/steve/.travis/travis.sh ] && source /Users/steve/.travis/travis.sh
[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash

[ -f "$HOME/.bash_profile.local" ] && source "$HOME/.bash_profile.local"

source "$BASH_IT"/bash_it.sh
eval "$(direnv hook bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1
