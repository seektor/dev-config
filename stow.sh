#!/usr/bin/env bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

stow --target="$HOME" --dir="$DOTFILES_DIR" ghostty
stow --target="$HOME" --dir="$DOTFILES_DIR" starship
stow --target="$HOME" --dir="$DOTFILES_DIR" fzf
stow --target="$HOME" --dir="$DOTFILES_DIR" my-bookmarks-manager
stow --target="$HOME" --dir="$DOTFILES_DIR" nvim
