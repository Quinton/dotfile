#!/usr/bin/env bash

# 安装HomeBrew软件-----------------------------------------------------------

# 安装 install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor # 检测程序是否正常权限是否足够

# iterm2 终端配置-------------------------------------------------------------

brew cask install iterm2 # iterm2 安装
brew install tmux        # 终端复用窗口拓展
brew install zsh         # 最新 zsh 安装
brew install git         # 版本控制安装
sudo chsh -s /bin/zsh    # 切换系统默认到 bash 为 zsh

# 安装 oh-my-zsh 插件
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# 配置文件软链接到用户主目录当中去--------------------------------------------

# 创建备份配置文件夹
mkdir ~/backup

# 数组保存需要链接的文件名
dotfiles=(.tmux.conf \  # 终端窗口复用器配置文件
    .tmux.conf.local \  # 终端窗口复用器的效果文件 
    .vimrc \            # vim编辑器配置文件 
    .vim \              # vim插件目录 
    .zshrc \            # zsh的配置文件 
    .eslintrc.js \      # eslint（关于javascript）配置文件 
    .ycm_extra_conf.py) # C语言 ycm_extra_conf.py配置文件 

# 如果配置文件在安装之前存在放入备份文件夹
for dotfile in dotfiles
do
    if [[ -e ~/${dotfile} ]]; then
        mv ~/${dotfile} ~/backup
    fi
done

# 把配置文件软链接到用户主目录中
for dotfile in dotfiles
do
    ln -s ~/dotfile/${dotfile} ~/${dotfile}
done

# 安装vim管理软件-------------------------------------------------------------

if [[ ! -e ~/dotfile/.vim/bundle ]]; then
    mkdir -p ~/dotfile/.vim/bundle
fi
if [[ ! -e ~/.vim/bundle/Vundle.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
