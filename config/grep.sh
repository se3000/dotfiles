GREP_OPTIONS+=" --color=auto"
for PATTERN in .cvs .git .hg .svn; do
  GREP_OPTIONS+=" --exclude-dir=$PATTERN"
done
for PATTERN in .cvs .git .hg .svn; do
  GREP_OPTIONS+=" --exclude=$PATTERN"
done

unset PATTERN
alias grep="grep $GREP_OPTIONS"
export GREP_COLOR='1;32'
