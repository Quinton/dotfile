#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# the link of tmux
ln -s ~/dotfile/.tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dotfile/.tmux/.tmux.conf.local ~/.tmux.conf.local

# the link of vim
ln -s ~/dotfile/.vimrc ~/.vimrc
ln -s ~/dotfile/.vim ~/.vim

# the link of .zhsrc
ln -s ~/dotfile/.zshrc ~/.zshrc

# 安装vim管理软件
if [[ ! -e ~/dotfile/.vim/bundle ]]; then
    mkdir ~/dotfile/.vim/bundle
fi
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
