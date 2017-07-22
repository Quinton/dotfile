" 设置通用前缀
let mapleader="\<Space>"

" 保存配置，并实时加载到系统环境当中去
nnoremap <silent> <leader>sv :w!<cr> :source %<cr>

" 插件的配置文件，把基本配置和插件配置分开
" 跳转到该文件，通过游标在bundles.vim位置上按gf按键跳转，再通过C-O回跳
source ~/.vim/bundles.vim

" 设置快捷键

" nnoremap cog :silent! let g:ale_set_loclist = 1<cr>
nnoremap coz :!ctags -R<cr>

" autocmd BufWritePost * call system("ctags -R")
set visualbell

" 调用man程序在vim内部查看命令
runtime ftplugin/man.vim

" 背景主题设置{{{ 
" 首先需要设置iterm2终端的profiles菜单下的Colors中的
" Color presets 设置为Solarized Dark主题
if exists('$TMUX')  || ( $TERM == "xterm" )
    " Mac自带终端声明为xterm -> 在终端配置高级选项栏中选择 xterm
    " iterm2的终端声明为 xterm-new ，终端显示zsh主题为 pygmalion
    " 以上zsh主题设置在.zshrc中配置 详见 ~/dotfile/.zshrc 
    " 早上6点到晚上6点为light背景， 晚上6点到早上6点为dark背景
    colorscheme molokai
    set background=light
else
    " 没有在tmux下iterm2终端的zsh主题为agnoster（安装了oh-my-zsh）
    " 当前为solarized主题，背景为暗色
    colorscheme solarized
    set background=dark
endif

" }}}

" 在命令模式中用%%展开当前目录
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

" 使能够在缓存文件之间跳
set hidden

" 字体编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 滚动条 对MacVim起作用
set guioptions=

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
augroup filetype_vim
    autocmd!
    autocmd filetype vim setlocal foldmethod=marker
augroup END

" for test
set foldmethod=marker
" tabstop
set tabstop=4
set shiftwidth=4
set softtabstop=4

" tab转化空格展开
set expandtab

" 文件只能用tab键时不转化为空格
set smarttab

" backspace
set backspace=indent,eol,start
" set hlsearch
set incsearch
set wildmode=full

" 无需缓存文件
set noswapfile

" 无需备份
set nobackup

" 超过屏幕长度自动转行，不折叠
set wrap
