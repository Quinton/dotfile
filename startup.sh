#!/usr/bin/env bash

# 安装 oh-my-zsh 插件
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# 配置文件软链接到用户主目录当中去--------------------------------------------

# 创建备份配置文件夹
if [[ ! -e ~/backup ]]; then
    mkdir ~/backup
fi 

# .vimrc vim编辑器配置文件 
# .vimr vim插件目录 
# .zshrc zsh的配置文件 
# 数组保存需要链接的文件名
dotfiles=(.vimrc .vim .zshrc)

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

echo
for dir in ${dires[@]}; do
    if [[ ! -e ~/dotfile/.vim/${dir} ]]; then
        mkdir -p ~/dotfile/.vim/${dir}
        if [[ "${dir}" = "bundle" ]]; then
            # 安装插件管理插件
            git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        fi
    fi
done
echo

