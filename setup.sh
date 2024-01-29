#!/bin/sh

# Whenever new dotfiles are used, create a new variable to store each one of them.

tmux='tmux.conf'
zsh='zshrc'
bash='bashrc'

cp $tmux ~/.$tmux
cp $zsh ~/.$zsh
cp $bash ~/.$bash
