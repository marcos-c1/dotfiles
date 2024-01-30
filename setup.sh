#!/bin/sh

# Whenever new dotfiles are used, create a new variable to store each one of them.

tmux='tmux.conf'
zsh='zshrc'
bash='bashrc'
rc='rc'

cp $tmux ~/.$tmux
cp $zsh ~/.$zsh
cp $bash ~/.$bash
cp $rc ~/.ssh/$rc

tmux source-file ~/.$tmux
source ~/.$zsh
source ~/.$bash
