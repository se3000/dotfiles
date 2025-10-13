export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export GOPATH="$HOME/go"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export ZSH_THEME="crcandy"

ulimit -S -n 8192

alias shutupvim="rm ~/.vim/.tmp/*.swp"
