#!/usr/bin/env bash

alias apt=brew
alias sudo='sudo '
shopt -s expand_aliases

# change directory to wherever the script is in
cd "$(dirname "${BASH_SOURCE}")";

# list of packages to install
pkgs=(
	'git'
	'curl'
	'zsh'
	'unzip'
	'fontconfig'
	'tmux'
	'fonts-cascadia-code'
)

for pkg in './packages'
do sudo apt install $pkg -Y
done

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -Y
