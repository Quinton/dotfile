let mapleader="\<Space>"

nnoremap <silent> <leader>sv :w!<cr> :source %<cr>
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>es :sp $MYVIMRC<cr>
nnoremap Q gq

source ~/.vim/bundles.vim
runtime ftplugin/man.vim

" {{{ 背景主题设置

    if exists('$TMUX') 
        colorscheme molokai
        set background=light
    else
        colorscheme solarized
        set background=dark
    endif

" }}}

" 编译


" 在命令模式中展开当前目录
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

" 使能够在缓存文件之间跳
set hidden

" 字体编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 滚动条
set go=

" 显示数字
set number

" 显示行列
" set cursorcolumn, cursorline

" 开启语法高亮
syntax enable
syntax on

" 智能缩进
set autoindent

" C缩进风格
set cindent

" 底层状态栏
set laststatus=2

" 显示命令
set showcmd

" 显示模式
set showmode

" 使用标签来折叠
set foldmethod=marker

" tabstop
set tabstop=4
set shiftwidth=4
set softtabstop=4

" tab转化空格展开
set expandtab
set smarttab

" backspace
set backspace=indent,eol,start
set hlsearch
set incsearch
set wildmode=full

" 无需缓存文件
set noswapfile

" 无需备份
set nobackup

" 不折叠
set wrap
