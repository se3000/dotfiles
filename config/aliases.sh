alias aliases="alias | sed 's/=.*//'"
alias functions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

alias go="grc go"
alias gt="go test ./..."
alias gt0="GOCACHE=off go test ./..."
alias gtr="go test -v ./... -run"
alias gtr0="GOCACHE=off go test -v ./... -run"
alias gitw="alias git=git-together"
alias rspec="bundle exec rspec"

alias clgo="cd ~/go/src/github.com/smartcontractkit/chainlink/"
alias clrb="ws chainlink-ruby"
alias dotfiles="ws dotfiles"
alias new_tmux="tmux -S /tmp/tmux_default"
alias tmuxr="tmux -S /tmp/tmux_default attach"
alias new_tmux_pair="tmux -S /tmp/pair"
alias tmux_pair="tmux -S /tmp/pair attach"

# https://github.com/dimroc/dotfiles/blob/master/bash_profile_includes/aliases.sh
alias ll="ls -lAh"
alias grep='grep -H -n'
alias untar="tar -xvf"
alias be="bundle exec"

alias shutupvim="rm ~/.vim/.tmp/*.swp"
