" 设置通用前缀空格键
let mapleader="\<Space>"

" 保存配置，并实时加载到系统环境当中去----------------------------------------
nnoremap <silent> <leader>sv :w!<cr> :source %<cr>

" 调用man程序在vim内部查看命令
runtime ftplugin/man.vim

" 插件安装配置文件和提高效率小技巧--------------------------------------------

" 跳转到该文件，通过游标聚焦在bundles.vim路径上按gf键跳转至文件，再通过C-O回跳
" 插件的配置文件，把基本配置和插件配置分开
source ~/.vim/plugin/plug.vim
" 基本方法，技巧配置
source ~/.vim/plugin/config.vim

" 基本配置--------------------------------------------------------------------

" 静音🔇
set visualbell

" 使文件在修改后（不保存），能够使用命令在缓存文件之间跳转
set hidden

" 字体编码优先顺序
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 显示行数字
set number
" set relativenumber

" 开启语法高亮 文件类型侦测
syntax enable on

" 智能缩进
set autoindent

" 底层状态栏
set laststatus=2

" 显示命令
set showcmd

" 显示模式
set showmode

" tab 转化空格展开
set expandtab

" 指定文件只能用tab键时不转化为空格，例如makefile
set smarttab

set nowrap
" backspace
set backspace=indent,eol,start

" set hlsearch
" set incsearch
set wildmode=full

" 无需缓存文件
set noswapfile

" 无需备份
set nobackup

" 设置鼠标功能
set mouse=a
