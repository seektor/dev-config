_BMM_BOOKMARKS=~/.config/my-bookmarks-manager/bookmarks

bm() {
  local label="${1:-${PWD:t}}"
  printf "%s\t%s\n" "$label" "$PWD" >> "$_BMM_BOOKMARKS"
  echo "Bookmarked: $label → $PWD"
}

bmrm() {
  local selected label tmpfile
  selected=$(awk -F'\t' '{ printf "%-30s\t%s\n", $1, $2 }' "$_BMM_BOOKMARKS" \
    | fzf --prompt="remove bookmark> ")
  [[ -z "$selected" ]] && return
  label=$(echo "$selected" | cut -f1 | sed 's/[[:space:]]*$//')
  tmpfile=$(mktemp)
  grep -vF "${label}	" "$_BMM_BOOKMARKS" > "$tmpfile" && mv "$tmpfile" "$_BMM_BOOKMARKS"
  echo "Removed: $label"
}

_cd_bookmark() {
  local selected
  selected=$(
    awk -F'\t' '{ printf "%-30s\t%s\n", $1, $2 }' "$_BMM_BOOKMARKS" \
    | fzf --prompt="bookmark> " \
          --preview 'ls -la "$(echo {} | cut -f2-)"' \
          --preview-window=right:40%
  )
  if [[ -n "$selected" ]]; then
    cd "$(echo "$selected" | cut -f2-)" && zle reset-prompt
  fi
}
zle -N _cd_bookmark
bindkey '^B' _cd_bookmark
