#!/usr/bin/env zsh
# bootstrap zsh
if [ ! -d $HOME/antigen ]; then
	git clone https://github.com/zsh-users/antigen $HOME/antigen
fi
cp zsh/zshrc $HOME/.zshrc

# bootstrap vim
if [ ! -d $HOME/.vim/bundle/vundle ]; then
	mv $HOME/.vim $HOME/.vim.old
	rm -rf $HOME/.vim/
	mkdir -p $HOME/.vim/bundle
	git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi
cp vim/vimrc $HOME/.vimrc

# configuring vim/powerline fonts
if [ ! -f $HOME/.fonts/PowerlineSymbols.otf ]; then
	mkdir -p $HOME/.fonts
       	cp fonts/PowerlineSymbols.otf $HOME/.fonts/
	fc-cache -vf $HOME/.fonts/
fi

if [ ! -f $HOME/.fonts.conf.d/10-powerline-symbols.conf ]; then
	mkdir -p $HOME/.fonts.conf.d/
	cp fonts/10-powerline-symbols.conf $HOME/.fonts.conf.d/
fi

# Install plugins
vim +BundleInstall +qall
