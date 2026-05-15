_BMM_BOOKMARKS=~/.config/my-bookmarks-manager/bookmarks

bm() {
  local label="${1:-${PWD:t}}"
  printf "%s\t%s\n" "$label" "$PWD" >> "$_BMM_BOOKMARKS"
  echo "Bookmarked: $label → $PWD"
}

bmrm() {
  local selected label tmpfile
  selected=$(awk -F'\t' '{ printf "%-30s %s\n", $1, $2 }' "$_BMM_BOOKMARKS" \
    | fzf --prompt="remove bookmark> ")
  [[ -z "$selected" ]] && return
  label=$(echo "$selected" | awk '{print $1}')
  tmpfile=$(mktemp)
  grep -v "^${label}	" "$_BMM_BOOKMARKS" > "$tmpfile" && mv "$tmpfile" "$_BMM_BOOKMARKS"
  echo "Removed: $label"
}

_cd_bookmark() {
  local selected
  selected=$(
    awk -F'\t' '{ printf "%-30s %s\n", $1, $2 }' "$_BMM_BOOKMARKS" \
    | fzf --prompt="bookmark> " \
          --preview 'ls -la "$(echo {} | cut -c32-)"' \
          --preview-window=right:40%
  )
  if [[ -n "$selected" ]]; then
    cd "$(echo "$selected" | cut -c32-)" && zle reset-prompt
  fi
}
zle -N _cd_bookmark
bindkey '^B' _cd_bookmark
