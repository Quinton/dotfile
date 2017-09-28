#!/usr/bin/env bash

# 安装HomeBrew软件-----------------------------------------------------------

# 安装 install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor # 检测程序是否正常权限是否足够

# iterm2 终端配置-------------------------------------------------------------

brew cask install iterm2 # iterm2 安装
brew install tmux        # 终端复用窗口拓展
brew install zsh         # 最新 zsh 安装
sudo chsh -s /bin/zsh    # 切换系统默认到 bash 为 zsh

# 安装 oh-my-zsh 插件
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# 配置文件软链接到用户主目录当中去--------------------------------------------

ln -s ~/dotfile/.tmux/.tmux.conf ~/.tmux.conf             # 终端窗口复用器配置文件
ln -s ~/dotfile/.tmux/.tmux.conf.local ~/.tmux.conf.local # 终端窗口复用器的效果文件

ln -s ~/dotfile/.vimrc ~/.vimrc                           # vim编辑器配置文件
ln -s ~/dotfile/.vim ~/.vim                               # vim插件目录

ln -s ~/dotfile/.zshrc ~/.zshrc                           # zsh的配置文件

ln -s ~/dotfile/.eslintrc.js ~/.tmux.conf                 # eslint（关于javascript）配置文件

ln -s ~/dotfile/.ycm_extra_conf.py ~/.ycm_extra_conf.py   # C语言 ycm_extra_conf.py配置文件

# 安装vim管理软件-------------------------------------------------------------

if [[ ! -e ~/dotfile/.vim/bundle ]]; then
    mkdir -p ~/dotfile/.vim/bundle
fi
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
