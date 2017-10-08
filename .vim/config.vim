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

