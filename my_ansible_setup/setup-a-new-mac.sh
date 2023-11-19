#!/usr/bin/env bash

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

for pkg in pkgs
do brew install $pkg
done

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -Y
