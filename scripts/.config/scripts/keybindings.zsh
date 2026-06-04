source ~/.config/scripts/bookmarks/bookmarks.zsh

zle -N _cd_bookmark
bindkey '^B' _cd_bookmark

_tmux_start() {
  ~/.config/scripts/tmux-start/tmux-start
  zle reset-prompt
}
zle -N _tmux_start
bindkey '^T' _tmux_start
