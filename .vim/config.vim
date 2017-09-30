" 小技巧----------------------------------------------------------------------
inoremap {<cr> {<cr>}<esc>O
inoremap g{<cr> {}<esc>i

" 在编辑模式中移动
inoremap <c-b> <left>
inoremap <c-f> <right>

" 在命令模式中用%%展开当前目录
cnoremap <expr> %% getcmdtype( ) == ':' ? expand('%:h').'/' : '%%'

" 设置快捷键

" nnoremap cog :silent! let g:ale_set_loclist = 1<cr>
nnoremap =oz :!ctags -R<cr>
nnoremap =ot :IndentLinesToggle<cr>

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

" 缩进控制 ts{tabstop} sw{shiftwidth} sts{softtabstop}
augroup filetype_indent
    autocmd!
    autocmd filetype css         setlocal ts=2 sw=2 sts=2
    autocmd filetype sh          setlocal ts=4 sw=4 sts=4
    autocmd filetype sql         setlocal ts=4 sw=4 sts=4
    autocmd filetype html        setlocal ts=2 sw=2 sts=2
    autocmd filetype javascript  setlocal ts=2 sw=2 sts=2
    autocmd filetype vim         setlocal ts=4 sw=4 sts=4
    autocmd filetype c           setlocal ts=4 sw=4 sts=4
    autocmd filetype cpp         setlocal ts=4 sw=4 sts=4
augroup END

" 使用标签来折叠vim配置文件
augroup filetype_vim
    autocmd!
    autocmd filetype vim setlocal foldmethod=marker
augroup END

