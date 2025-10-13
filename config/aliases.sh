alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

alias dotfiles="ws dotfiles"

# https://github.com/dimroc/dotfiles/blob/master/bash_profile_includes/aliases.sh
alias ll="ls -lAh"
alias grep='grep -H -n'
alias untar="tar -xvf"
alias be="bundle exec"

alias shutupvim="rm ~/.vim/.tmp/*.swp"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
