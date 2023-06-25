#!/bin/sh

stow --target=$HOME nvim --ignore .DS_Store
stow --target=$HOME tmux --ignore .DS_Store
stow --target=$HOME scripts --ignore .DS_Store