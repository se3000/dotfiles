alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

alias go="grc go"
alias gt="go test -p 4 ./..."
alias gt0="GOCACHE=off go test -p 4 ./..."
alias gtr="go test -p 4 -v ./... -run"
alias gtr0="GOCACHE=off go test -v -p 4 ./... -run"
alias gitw="alias git=git-together"
alias rspec="bundle exec rspec"

alias dotfiles="ws dotfiles"
alias tmuxr="tmux attach"

# https://github.com/dimroc/dotfiles/blob/master/bash_profile_includes/aliases.sh
alias ll="ls -lAh"
alias grep='grep -H -n'
alias untar="tar -xvf"
alias be="bundle exec"

alias shutupvim="rm ~/.vim/.tmp/*.swp"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
