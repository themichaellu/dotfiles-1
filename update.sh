#!/usr/bin/env zsh
if [[ ! -d $HOME/antigen ]]; then
	git clone https://github.com/zsh-users/antigen $HOME/antigen
fi
cp zshrc $HOME/.zshrc
