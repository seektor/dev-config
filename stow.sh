#!/bin/sh

# Create simlinks in ~/.config/ for the folders in ./configs/
stow --target=$HOME/.config configs --ignore .DS_Store --ignore tmux

# Create simlink to tmux config as for some reason it is not sourced from ~/.config/tmux/tmux.conf
stow --target=$HOME --dir=./configs tmux --ignore .DS_Store
