alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

alias go="grc go"
alias gt="go test -p 2 ./..."
alias gt0="GOCACHE=off go test -p 2 ./..."
alias gtr="go test -v ./... -run"
alias gtr0="GOCACHE=off go test -v -p 2 ./... -run"
alias gitw="alias git=git-together"
alias rspec="bundle exec rspec"

alias clgo="cd ~/go/src/github.com/smartcontractkit/chainlink/"
alias clrb="ws chainlink-ruby"
alias dotfiles="ws dotfiles"
alias tmuxn="tmux -S /tmp/tmux-501/default"
alias tmuxr="tmux -S /tmp/tmux-501/default attach"
alias tmuxn_pair="tmux -S /tmp/pair"
alias tmuxr_pair="tmux -S /tmp/pair attach"

# https://github.com/dimroc/dotfiles/blob/master/bash_profile_includes/aliases.sh
alias ll="ls -lAh"
alias grep='grep -H -n'
alias untar="tar -xvf"
alias be="bundle exec"

alias shutupvim="rm ~/.vim/.tmp/*.swp"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
