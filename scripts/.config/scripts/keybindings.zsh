source ~/.config/scripts/bookmarks/bookmarks.zsh

zle -N _cd_bookmark
bindkey '^B' _cd_bookmark

_tmux_start() {
  tmux new-session -d -s main -c "$(pwd)" 2>/dev/null
  tmux new-session -d -s dev-config -c ~/Programming/__DevOps__/dev-config 2>/dev/null
  BUFFER="tmux attach -t main"
  zle accept-line
}
zle -N _tmux_start
bindkey '^T' _tmux_start
