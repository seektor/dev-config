# fzf shell integration
# Source this file from your ~/.zshrc:
#   source ~/.config/fzf/fzf.sh

# Initialize fzf key bindings and completion (installed via brew)
if [[ -f "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh" ]]; then
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
fi
if [[ -f "$(brew --prefix)/opt/fzf/shell/completion.zsh" ]]; then
  source "$(brew --prefix)/opt/fzf/shell/completion.zsh"
fi

# Use fd instead of find (respects .gitignore, faster)
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# Apply to Ctrl-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Alt-C: only show directories
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

export FZF_DEFAULT_OPTS="
  --height 50%
  --layout=reverse
  --border rounded
  --info inline
  --preview-window=right:55%:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {+} | pbcopy)+abort'
  --bind 'ctrl-a:select-all'
  --bind 'ctrl-d:deselect-all'
"

# Ctrl-T preview: bat for files, tree for dirs
export FZF_CTRL_T_OPTS="
  --preview '([[ -d {} ]] && tree -C {} | head -100) || bat --style=numbers --color=always {} 2>/dev/null || cat {}'
"

# Alt-C preview: tree
export FZF_ALT_C_OPTS="
  --preview 'tree -C {} | head -60'
"

# Ctrl-R history: show full command, copy on Ctrl-Y
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window=down:2:wrap
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
"

# -----------------------------------------------
# Useful shell functions
# -----------------------------------------------

# fcd — fuzzy cd into any directory (including hidden)
fcd() {
  local dir
  dir=$(fd --type d --hidden --follow --exclude .git . "${1:-.}" | fzf --preview 'tree -C {} | head -60') && cd "$dir"
}

# flog — fuzzy git log with diff preview
flog() {
  git log --oneline --color=always "$@" |
    fzf --ansi --no-sort --reverse \
        --preview 'git show --color=always {1}' \
        --bind 'enter:execute(git show --color=always {1} | less -R)'
}

# fgb — fuzzy git branch switch
fgb() {
  local branch
  branch=$(git branch --all --color=always |
    grep -v HEAD |
    fzf --ansi --preview 'git log --oneline --color=always $(echo {} | sed "s/.* //")' |
    sed 's/.* //' | sed 's|remotes/[^/]*/||')
  [[ -n "$branch" ]] && git checkout "$branch"
}

