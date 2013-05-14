#!/usr/bin/env zsh
# bootstrap zsh
if [[ ! -d $HOME/antigen ]]; then
	git clone https://github.com/zsh-users/antigen $HOME/antigen
fi
cp zsh/zshrc $HOME/.zshrc

# bootstrap vim
if [[ ! -d $HOME/.vim/bundle/vundle ]]; then
	mv $HOME/.vim $HOME/.vim.old
	rm -rf $HOME/.vim/
	mkdir -p $HOME/.vim/bundle
	git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi
cp vim/vimrc $HOME/.vimrc

# Install plugins
vim +BundleInstall +qall
