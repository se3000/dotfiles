# Managed in se3000/dotfiles — edit there, not here.

for file in "$DOTFILES_DIR"/config/*.sh; do
 [ -f $file ] && . $file
done

[ -f ~/.fzf.zsh ] && {
  source ~/.fzf.zsh
  bindkey '^[[A' fzf-history-widget
}

eval "$(direnv hook zsh)"
export HISTORY_IGNORE="(access_token|accesstoken|AKIA|api_key|apikey|authonly|authorization|aws_access_key_id|aws_secret_access_key|bearer|client-secret|client_secret|current_key|eyjrijoi|gh_token|github_token|hooks.slack.com|id-token|id_token|kubectl --token=|kubectl config set-credentials|pagerduty_|password|private_key|private_key_id|read|refresh-token|refresh_token|refreshtoken|token|x-api-key|x-auth-key)"

setopt PROMPT_SUBST
git_status() {
  git rev-parse --is-inside-work-tree &>/dev/null || return
  if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
    print -n ' %F{red}✗%f'
  else
    print -n ' %F{white}✓%f'
  fi
}

PROMPT='
%F{red}(╯°□°）╯︵ ┻━┻%f  in  %F{blue}%~%f$(git_status)
❯ '
