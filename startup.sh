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
sudo chsh -s `which zsh` # 切换系统默认到 bash 为 zsh

# 安装 oh-my-zsh 插件
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# 配置文件软链接到用户主目录当中去--------------------------------------------

# 创建备份配置文件夹
if [[ ! -e ~/backup ]]; then
    mkdir ~/backup
fi 

# .tumx.conf 终端窗口复用器配置文件
# .tumx.conf.local 终端窗口复用器的效果文件 
# .vimrc vim编辑器配置文件 
# .vimr vim插件目录 
# .zshrc zsh的配置文件 
# .eslintrc.js eslint（关于javascript）配置文件 
# C语言 ycm_extra_conf.py配置文件 
# .tern-project javascript 语义补全配置文件 
# 数组保存需要链接的文件名
dotfiles=(.tmux.conf .tmux.conf.local .vimrc .vim .zshrc .eslintrc.js .ycm_extra_conf.py .tern-project)

echo 
# 如果配置文件在安装之前存在放入备份文件夹
for dotfile in ${dotfiles[@]}; do
    if [[ -e ~/${dotfile} && -e ~/backup/${dotfile} ]]; then
        echo "删除 ${HOME}/backup/${dotfile} 文件"
        rm ~/backup/${dotfile}
        echo "移动 ${HOME}/${dotfile} 文件到 backup 文件夹"
        mv ~/${dotfile} ~/backup
    elif [[ -e ~/${dotfile} && ! -e ~/backup/${dotfile} ]]; then
        echo "移动 ${HOME}/${dotfile} 文件到 backup 文件夹"
        mv ~/${dotfile} ~/backup
    fi
    echo "软链接配置文件 ${HOME}/${dotfile} 到 ${HOME}/${dotfile}"
    # 把配置文件软链接到用户主目录中
    ln -s ~/dotfile/${dotfile} ~/${dotfile}
done
echo 

# 安装vim插件目录-------------------------------------------------------------

# 需要的文件目录
dires=(plugin bundle)

for dir in ${dires[@]}; do
    if [[ ! -e ~/dotfile/.vim/${dir} ]]; then
        mkdir -p ~/dotfile/.vim/${dir}
        if [[ "${dir}" = "bundle" ]]; then
            # 安装插件管理插件
            git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        fi
    fi
done

