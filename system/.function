prepend-path() {
  [ -d $1 ] && PATH="$1:$PATH"
}

# Calculator

calc() {
  echo "$*" | bc -l;
}

# Weather

weather() {
  local LOCALE=`echo ${LANG:-en} | cut -c1-2`
  if [ $# -eq 0 ]; then
    local LOCATION=`curl -s ipinfo.io/loc`
  else
    local LOCATION=$1
  fi
  curl -s "$LOCALE.wttr.in/$LOCATION"
}

# Open man page as PDF

manpdf() {
  man -t "$1" | open -f -a /Applications/Preview.app/
}


# Open query in Dash app

dash() {
  case $# in
    1) QUERY="$1";;
    2) QUERY="$1:$2";;
    *) echo "Usage: dash [docset] query"; return 1;
  esac
  open "dash://$QUERY"
}

# Create a new directory and enter it

mk() {
  mkdir -p "$@" && cd "$@"
}

# Find real from shortened url

unshorten() {
  curl -sIL $1 | sed -n 's/Location: *//p'
}

# https://github.com/dimroc/dotfiles/blob/master/bash_profile_includes/functions.sh
function workspace() {
  if [ $# -gt 0 ]; then
    cd ~/workspace/$1
  else
    cd ~/workspace
  fi
}

function ws() {
  if [ $# -gt 0 ]; then
    cd ~/workspace/$1
  else
    cd ~/workspace
  fi
}
