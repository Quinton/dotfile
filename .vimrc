" 设置通用前缀
let mapleader="\<Space>"

" 保存配置，并实时加载到系统环境当中去
nnoremap <silent> <leader>sv :w!<cr> :source %<cr>

" 插件的配置文件，把基本配置和插件配置分开
" 跳转到该文件，通过游标聚焦在bundles.vim位置上按gf按键跳转，再通过C-O回跳
source ~/.vim/bundles.vim
source ~/.vim/config.vim

" 设置快捷键

" nnoremap cog :silent! let g:ale_set_loclist = 1<cr>
nnoremap =oz :!ctags -R<cr>
nnoremap =ot :IndentLinesToggle<cr>

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

" 使文件在修改后（不保存），能够在缓存文件之间跳转
set hidden

" 字体编码优先顺序
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 显示数字
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

" 使用标签来折叠vim配置文件
augroup filetype_vim
    autocmd!
    autocmd filetype vim setlocal foldmethod=marker
augroup END

" 缩进控制 ts{tabstop} sw{shiftwidth} sts{softtabstop}
augroup filetype_indent
    autocmd!
    autocmd filetype css         setlocal ts=2 sw=2 sts=2
    autocmd filetype sql         setlocal ts=4 sw=4 sts=4
    autocmd filetype html        setlocal ts=2 sw=2 sts=2
    autocmd filetype javascript  setlocal ts=2 sw=2 sts=2
    autocmd filetype vim         setlocal ts=4 sw=4 sts=4
    autocmd filetype c           setlocal ts=4 sw=4 sts=4
    autocmd filetype cpp         setlocal ts=4 sw=4 sts=4
augroup END

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
