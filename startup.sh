#!/bin/bash

# 安装HomeBrew软件
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 检测程序是否正常权限是否足够
brew doctor

# 安装gui软件
brew install brew-cask

# 安装所需软件
brew install tmux # vim autojump cmake git reattach-to-user-namespace xz  node mysal

# 安装oh-my-zsh插件
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh


# the link of dotfile configuration file

# 终端窗口复用器配置文件
ln -s ~/dotfile/.tmux/.tmux.conf ~/.tmux.conf
# 终端窗口复用器的效果文件
ln -s ~/dotfile/.tmux/.tmux.conf.local ~/.tmux.conf.local

# vim编辑器配置文件
ln -s ~/dotfile/.vimrc ~/.vimrc
# vim插件目录
ln -s ~/dotfile/.vim ~/.vim

# zsh的配置文件
ln -s ~/dotfile/.zshrc ~/.zshrc

# eslint（关于javascript）配置文件
ln -s ~/dotfile/.eslintrc.js ~/.tmux.conf


# 安装vim管理软件
if [[ ! -e ~/dotfile/.vim/bundle ]]; then
    mkdir -p ~/dotfile/.vim/bundle
fi
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
