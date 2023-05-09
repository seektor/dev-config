#!/bin/sh

# Create simlinks in ~/.config/ for the folders in ./configs/
stow --target=$HOME/.config configs --ignore .DS_Store
