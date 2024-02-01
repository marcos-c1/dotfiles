#!/bin/sh

# Whenever new dotfiles are used, create a new variable to store each one of them.

tmux='tmux.conf'
zsh='zshrc'
bash='bashrc'
rc='rc'
arg=$1

new_changes(){
	cp ~/.$tmux $tmux
	cp ~/.$zsh $zsh 
	cp ~/.$bash $bash 
	cp ~/.ssh/$rc $rc
}

helper(){
	echo " -c \t Copy all the changes made in dotfiles at root directory to this repository\n -s \t Set all dotfiles in root directory\n -h \t Helper."
}

setup(){
	cp $tmux ~/.$tmux
	cp $zsh ~/.$zsh
	cp $bash ~/.$bash
	cp $rc ~/.ssh/$rc

	tmux source-file ~/.$tmux
	source ~/.$zsh
	source ~/.$bash
}

if [ "$#" -eq 0 ]; then
 	echo "Pass the params to file.\nUse --h to know which flags are disponible."
 else
 	if [ $arg = "--h" ]; then
 		helper
 	elif [ $arg = "-c" ]; then
 		new_changes
 	elif [ $arg = "-s" ]; then
 		setup
 	else
 		echo "Invalid argument.\nUse --h to know which flags are disponible."
 	fi
fi
