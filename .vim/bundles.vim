set nocompatible
filetype off

" Vundle plugin setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" General enhancements


" vim 的git插件
Plugin 'tpope/vim-fugitive'

" 括号配对
" Plugin 'Raimondi/delimitMate'

" vim-scripts  repos

Plugin 'tpope/vim-repeat'

" 给文件加注释
Plugin 'tpope/vim-commentary'

" 遍历列表 [b 缓存,[q quickfix,[a args,[l location,[t tags
Plugin 'tpope/vim-unimpaired'

" 添加／删除／改变成对符号
Plugin 'tpope/vim-surround' " ds,ys,cs

" 智能替换
Plugin 'tpope/vim-abolish'


" Plugin 'tpope/vim-bundler'
" rails工程文件查找文件
" Plugin 'tpope/vim-rails'
" Plugin 'vim-ruby/vim-ruby'

" 快速移动查找
Plugin 'Lokaltog/vim-easymotion'

" 为下面动作做基础
Plugin 'kana/vim-textobj-user'

" 全局动作 ae, ie
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-lastpat'

Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nelstrom/vim-qargs'

" 方式对齐
Plugin 'godlygeek/tabular'    
    let g:taabular_loaded = 1
    
" 语法高亮
Plugin 'pangloss/vim-javascript'
    let g:javascript_plugin_jsdoc = 1
" javascript补全支持 需要配置.tern-project文件
" 
Plugin 'ternjs/tern_for_vim'

" Plugin 'ruanyl/vim-eslint', {'do': 'npm install'}

" 语言语法(syntax)高亮支持{{{

    " {{{cpp STL语法支持
        Plugin 'Mizuchi/STL-Syntax'
    " }}}

    " " swift {{{ 

    "     " swift的扩展文件 {{{
    "         Plugin 'cfdrake/ultisnips-swift'
    "     " }}}

    "     " swift的语法、高亮、智能等等 {{{
    "         Plugin 'toyamarinyon/vim-swift'
    "     " }}}

    " " }}}

    " {{{Typescript 语法支持
        " Plugin 'Quramy/tsuquyomi'
        " Plugin 'leafgarland/typescript-vim'
        Plugin 'HerringtonDarkholme/yats.vim'
        if !exists("g:ycm_semantic_triggers")
            let g:ycm_semantic_triggers = {}
        endif
        let g:ycm_semantic_triggers['typescript'] = ['.']
    " }}}

"}}}

    " emmet高速编写网页类代码 {{{
        Plugin 'mattn/emmet-vim'
            let g:user_emmet_settings = {
            \ 'php' : {
            \ 'extends' : 'html',
            \ 'filters' : 'c',
            \ },
            \ 'xml' : {
            \ 'extends' : 'html',
            \ },
            \ 'haml' : {
            \ 'extends' : 'html',
            \ },
            \}
        " 帮助emmet显示snippets提示
        Plugin 'jceb/emmet.snippets'
    " }}}

" 窗口美化及布置{{{

" Powerline{{{
    Plugin 'lokaltog/vim-powerline'
        " set guifont=PowerlineSymbols\ for\ Powerline
        set t_Co=256
        set encoding=utf-8
        " let g:Powerline_theme = 'solarized16'
        let g:Powerline_colorscheme = 'solarized256'
        let g:Powerline_symbols = 'unicode'
        let g:Powerline_stl_path_style = 'full'
        " set fillchars+=stl:\ ,stlnc:\
" }}}

" " vim-indent-guides{{{
"     Plugin 'nathanaelkane/vim-indent-guides'
"     " 随 vim 自启动
"     let g:indent_guides_enable_on_vim_startup=0
"     " 从第二层开始可视化显示缩进
"     let g:indent_guides_start_level=2
"     " 色块宽度
"     let g:indent_guides_guide_size=1
"     " 快捷键 i 开/关缩进可视化
"     :nmap <silent> <Leader>i <Plug>IndentGuidesToggle
" " }}}

    " " minibufexpl{{{
    "     Plugin 'fholgado/minibufexpl.vim'
    "     " minibufexpl插件的一般设置
    "     let g:miniBufExplMapWindowNavVim = 1
    "     let g:miniBufExplMapWindowNavArrows = 1
    "     let g:miniBufExplMapCTabSwitchBufs = 0
    "     let g:miniBufExplModSelTarget = 1 
    " " }}}
    
    " " nerdtree目录树{{{
    "     Plugin 'scrooloose/nerdtree'
    "     " 设置显示／隐藏标签列表 
    "     nnoremap <F8> :NERDTreeToggle<cr> :TagbarToggle<CR> 
    "     let g:NERDTreeDirArrows = 1
    "     let g:NERDTree_title="[NERDTree]"  
    "     function!  NERDTree_Start()  
    "         exec 'NERDTree'  
    "     endfunction  
    "     function! NERDTree_IsValid()  
    "         return 1  
    "     endfunction  
    "     " autocmd vimenter * NERDTree
    "     " 当没有文件输入是打开目录树
    "     " autocmd StdinReadPre * let s:std_in=1
    "     " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    "     " 当只有目录树时退出vim
    "     autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    " " }}}

    " " winmanager窗口管理{{{
    "     Plugin 'winmanager'
    "     " 打开vim时自动打开winmanager  
    "     let g:AutoOpenWinManager = 1  
    "     " 在vim左侧显示窗口Taglist和文件列表窗口  
    "     " let g:winManagerWindowLayout='FileExplorer,BufExplorer|TagList'  
    "     let g:winManagerWindowLayout='NERDTree, MiniBufExplorer|Tagbar'  
    "     " 定义打开关闭winmanager的快捷键为 wt组合键命令  
    "     nmap wt :WMToggle<cr>  
    " " }}}

" }}}

" 导航与搜索{{{

    " 显示quickfix列表和location列表{{{
        Plugin 'Valloric/ListToggle'
            let g:lt_location_list_toggle_map = '<leader>l'
            let g:lt_quickfix_list_toggle_map = '<leader>q'
            let g:lt_height = 10        
    " }}}

    " 文件搜索等等{{{
        Plugin 'Shougo/unite.vim'
    " }}}

    " 内容搜索 Ag {{{
        Plugin 'rking/ag.vim'
        let g:ag_prg="/usr/local/bin/ag --vimgrep"
        let g:ag_working_path_mode="r"
    " }}}

    " 历史回溯 {{{
        Plugin 'sjl/gundo.vim'
    " }}}

    " visual mark可视标签{{{
        " 标签显示
        Plugin 'kshenoy/vim-signature'
        let g:SignatureMap = {
            \ 'Leader'             :  "m",
            \ 'PlaceNextMark'      :  "m,",
            \ 'ToggleMarkAtLine'   :  "m.",
            \ 'PurgeMarksAtLine'   :  "m-",
            \ 'DeleteMark'         :  "dm",
            \ 'PurgeMarks'         :  "mda",
            \ 'PurgeMarkers'       :  "m<BS>",
            \ 'GotoNextLineAlpha'  :  "']",
            \ 'GotoPrevLineAlpha'  :  "'[",
            \ 'GotoNextSpotAlpha'  :  "`]",
            \ 'GotoPrevSpotAlpha'  :  "`[",
            \ 'GotoNextLineByPos'  :  "]'",
            \ 'GotoPrevLineByPos'  :  "['",
            \ 'GotoNextSpotByPos'  :  "mn",
            \ 'GotoPrevSpotByPos'  :  "mp",
            \ 'GotoNextMarker'     :  "[+",
            \ 'GotoPrevMarker'     :  "[-",
            \ 'GotoNextMarkerAny'  :  "]=",
            \ 'GotoPrevMarkerAny'  :  "[=",
            \ 'ListLocalMarks'     :  "ms",
            \ 'ListLocalMarkers'   :  "m?"
            \ }
    " }}}

    " tagbar{{{
        " 需要下载Ctags
        Plugin 'majutsushi/tagbar'
        " 设置 tagbar 子窗口的位置出现在主编辑区的右边 
        let tagbar_right=1 
        " 设置标签子窗口的宽度 
        let tagbar_width=32 
        " tagbar 子窗口中不显示冗余帮助信息 
        let g:tagbar_compact=1
        " 设置 ctags 对哪些代码元素生成标签
        let g:tagbar_type_cpp = {
            \ 'ctagstype' : 'c++',
            \ 'kinds' : [
                \ 'd:macros:1',
                \ 'g:enums',
                \ 't:typedefs:0:0',
                \ 'e:enumerators:0:0',
                \ 'n:namespaces',
                \ 'c:classes',
                \ 's:structs',
                \ 'u:unions',
                \ 'f:functions',
                \ 'm:members:0:0',
                \ 'v:global:0:0',
                \ 'x:external:0:0',
                \ 'l:local:0:0'
             \ ],
             \ 'sro'        : '::',
             \ 'kind2scope' : {
                 \ 'g' : 'enum',
                 \ 'n' : 'namespace',
                 \ 'c' : 'class',
                 \ 's' : 'struct',
                 \ 'u' : 'union'
             \ },
             \ 'scope2kind' : {
                 \ 'enum'      : 'g',
                 \ 'namespace' : 'n',
                 \ 'class'     : 'c',
                 \ 'struct'    : 's',
                 \ 'union'     : 'u'
             \ }
        \ }
    " }}}

    " " 文件搜索等{{{
    " Plugin 'kien/ctrlp.vim'
    "     let g:ctrlp_map = '<c-\>'
    "     " let g:ctrlp_cmd = 'CtrlP'
    "     let g:ctrlp_working_path_mode = 'ra'
    "     set wildignore+=*/tmp/*,*.so,*.swp,*.zip
    "     " 文件过滤
    "     let g:ctrlp_custom_ignore = {
    "         \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    "         \ 'file': '\v\.(out|exe|so|dll)$',
    "         \ 'link': 'some_bad_symbolic_links',
    "         \ }

    " " }}}

" }}}

" 语法检测自动补全及扩展{{{

    " YouCompleteme{{{
        Plugin 'Valloric/YouCompleteMe'
        " 只能是 #include 或已打开的文件
        " nnoremap <leader>f : YcmCompleter GoToDefinition<cr>
        " nnoremap <leader>l : YcmCompleter GoToDeclaration<cr>
        nnoremap <leader>j  :YcmCompleter GoToDefinitionElseDeclaration<cr>
        nnoremap <Leader>o :YcmDiags<cr>
        let g:ycm_open_loclist_on_ycm_diags = 0
        let g:ycm_key_list_select_completion   = ['<C-n>'] ", '<Down>']
        let g:ycm_key_list_previous_completion = ['<C-p>'] ", '<Up>']
        let g:SuperTabDefaultCompletionType    = '<C-n>'
        " 不显示load python 提示
        let g:ycm_confirm_extra_conf=0
        " 通过ycm语法检测显示错误符号和警告符号⚠️
        let g:ycm_error_symbol   = '✗'
        let g:ycm_warning_symbol = '⚠'
    " }}}

    " ale 语法检测{{{
        Plugin 'w0rp/ale'
        " let g:ale_linters = {
        "             \   'javascript': ['eslint_d'],
        "             \   'c': [''],
        "             \}
        " let g:ale_sign_error='✗'
        " let g:ale_sign_warning='⚠️'                   
        " 将错误和警告信息填入quickfix中
        " let g:ale_set_loclist = 0
        " let g:ale_set_quickfix = 1
    " }}}
    
    " snippets片段扩展{{{
        " 通过VimL的支持
        Plugin 'honza/vim-snippets'
        " 需要共通过Python的支持
        Plugin 'SirVer/ultisnips'
            let g:UltiSnipsSnippetDirectories  = ["UltiSnips"]
            let g:UltiSnipsSnippetsDir         = ["mysnips"] " '~/.vim/bundle/ultisnips/mysnips'
            let g:UltiSnipsExpandTrigger       = "<Tab>"
            let g:UltiSnipsListSnippets        = '<C-Tab>'
            let g:UltiSnipsJumpForwardTrigger  = "<Tab>"
            let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
    " }}}

" }}}

" 界面颜色主题{{{

    " solarized{{{
        Plugin 'altercation/vim-colors-solarized'
            let g:solarized_termcolors = 256
            let g:solarized_termtrans  = 1
            " let g:solarized_degrade    = 1
            " optional normal high low
            " 背景和文本的对比度??
            let g:solarized_contrast   = "high"
            " set list后不可见字符看见后地颜色
            let g:solarized_visibility = "normal"
    " }}}

    " molokai{{{
        Plugin 'tomasr/molokai'
            let g:molokai_original = 1
            let g:rehash256 = 1
    " }}}

    " base-16{{{
        Plugin 'chriskempson/base16-vim'
        let base16colorspace=256  " Access colors present in 256 colorspace
    " }}}

" }}}

call vundle#end()

filetype plugin indent on
