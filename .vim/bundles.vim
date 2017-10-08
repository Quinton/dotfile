set nocompatible
filetype off

" 指定加载管理插件的文件夹地址
" 插件的存放的根文件夹一律在~/.vim/bundle/下
set rtp+=~/.vim/bundle/Vundle.vim
" Vundle管理插件软件开始运行
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"  基本文本操作功能的增强
Plugin 'skywind3000/asyncrun.vim'

" 为其他插件提供重复操作功能
Plugin 'tpope/vim-repeat'

" 给文件加注释
Plugin 'tpope/vim-commentary'

" 提供遍历 [b 缓存,[q quickfix,[a args,[l location,[t tags
" 设置 con 显示数字，coh 显示高亮，col 显示不可见字符...
" 
Plugin 'tpope/vim-unimpaired'

" 添加／删除／改变成对符号
Plugin 'tpope/vim-surround' " ds,ys,cs,visual mode S

" 智能替换
Plugin 'tpope/vim-abolish'

" 通过gf浏览目录中不带后缀的文件
Plugin 'tpope/vim-bundler'

" rails工程文件查找文件
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" 快速移动查找
Plugin 'Lokaltog/vim-easymotion'
map <leader> <plug>(easymotion-prefix)

" 模式显示所有匹配项
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
map /  <plug>(incsearch-forward)
map g/ <plug>(incsearch-stay)

" 为下面动作做基础
Plugin 'kana/vim-textobj-user'

" 全局动作 ae, ie
Plugin 'kana/vim-textobj-entire'

" 正则匹配单词的一部分，提供操作可以用operate + (? or i)/（正则模式类型）
Plugin 'kana/vim-textobj-lastpat'

" 可视模式下用*号匹配字符串
Plugin 'nelstrom/vim-visual-star-search'

" 筛选符合条件的argslist文件并保存到args中去
Plugin 'nelstrom/vim-qargs'

" 方式对齐
Plugin 'godlygeek/tabular'    
let g:taabular_loaded = 1

" vim 的git版本控制{{{
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
" }}}

call vundle#end()

filetype plugin indent on
