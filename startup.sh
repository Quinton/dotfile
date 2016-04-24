#!/bin/bash

# 安装brew软件
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 检测程序是否正常权限是否足够
brew doctor

# 安装gui安装软件
brew install brew-cask

# 安装所需软件
brew install tmux # vim autojump cmake git reattach-to-user-namespace xz  node mysal

# 安装oh-my-zsh插件
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
    mkdir -p ~/dotfile/.vim/bundle
fi
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
