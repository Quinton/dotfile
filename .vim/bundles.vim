set nocompatible
filetype off

" 指定加载管理插件的文件夹地址
" 插件的存放的根文件夹一律在~/.vim/bundle/下
set rtp+=~/.vim/bundle/Vundle.vim
" Vundle管理插件软件开始运行
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" vim中文说明文档 ./vimcdoc.sh -i安装
Plugin 'yianwillis/vimcdoc'

" 打开关闭折叠效果 za

"  基本文本操作功能的增强{{{
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

" motion{{{
" 快速移动查找
Plugin 'Lokaltog/vim-easymotion'
map <leader> <plug>(easymotion-prefix)

" 模式显示所有匹配项
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
map /  <plug>(incsearch-forward)
map g/ <plug>(incsearch-stay)

Plugin 'haya14busa/incsearch-fuzzy.vim'
function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
                \   'converters': [incsearch#config#fuzzyword#converter()],
                \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
                \   'keymap': {"\<C-l>": '<Over>(easymotion)'},
                \   'is_expr': 0,
                \   'is_stay': 1
                \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" }}}

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

" }}}

"  排版文本文件, 按照标点符号对齐...{{{

" 方式对齐
Plugin 'godlygeek/tabular'    
let g:taabular_loaded = 1

" 文本排版
" Plugin 'hotoo/pangu.vim'    

" }}}

" 语法高亮检测自动补全及扩展显示{{{

" YouCompleteme智能补全{{{
Plugin 'Valloric/YouCompleteMe'
" 只能是 #include 或已打开的文件
" nnoremap <leader>f : YcmCompleter GoToDefinition<cr>
" nnoremap <leader>l : YcmCompleter GoToDeclaration<cr>
" nnoremap <leader>j  :YcmCompleter GoToDefinitionElseDeclaration<cr>
nnoremap <Leader>o :YcmDiags<cr>
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_open_loclist_on_ycm_diags = 0
let g:ycm_key_list_select_completion   = ['<C-n>'] ", '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>'] ", '<Up>']
let g:SuperTabDefaultCompletionType    = '<C-n>'
" 不显示load python 提示
let g:ycm_confirm_extra_conf=0
" 通过ycm语法检测显示错误符号和警告符号⚠️
let g:ycm_error_symbol   = '✗'
let g:ycm_warning_symbol = '⚠'
" 关闭ycm的语法检测功能
" 通过ALE来检测语法(防止重复显示错误内容，显示的机理相同)
" let g:ycm_show_diagnostics_ui = 0
"
" let g:ycm_open_loclist_on_ycm_diags = 0
" let g:ycm_always_populate_location_list = 0
" let g:ycm_enable_diagnostic_signs = 0
" let g:ycm_enable_diagnostic_highlighting = 0
" }}}

" 绝大多数语言语法高亮支持{{{
Plugin 'sheerun/vim-polyglot'
" let  g:polyglot_disabled  = [ ' css ' ]
" }}}

" 语法检测{{{

Plugin 'htacg/tidy-html5'

Plugin 'w0rp/ale'
let g:ale_linters = {
            \   'javascript': ['eslint'],
            \   'html': ['tidy']
            \}
let g:ale_sign_error='✗'
let g:ale_sign_warning='⚠'                   
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

" 显示quickfix列表和location列表{{{
Plugin 'Valloric/ListToggle'
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10        
" }}}

" " swift {{{ 

"     " swift的扩展文件 {{{
"         Plugin 'cfdrake/ultisnips-swift'
"     " }}}

"     " swift的语法、高亮、智能等等 {{{
"         Plugin 'toyamarinyon/vim-swift'
"     " }}}

" " }}}

" }}}

" 文件搜索，匹配，定位，版本控制{{{

" 文件搜索等等{{{
Plugin 'Shougo/denite.nvim'
" }}}

"  安装cscope 配置程序目录及生成数据库文件，支持 c 语言{{{
nmap coa :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
            \:!cscope -b -i cscope.files -f cscope.out<CR>
            \:cs reset<CR>
if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " 添加数据库文件到当前文件目录
    if filereadable("cscope.out")
        cs add cscope.out
        " 否则通过环境变量添加数据库点
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
" }}}

" 内容匹配 Ag 类似grep{{{
Plugin 'rking/ag.vim'
let g:ag_prg="/usr/local/bin/ag --vimgrep"
let g:ag_working_path_mode="r"
let g:ag_highlight=1
let g:ag_format="%f:%l:%m"
" }}}

" vim 的git版本控制{{{
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
" }}}

" 历史回溯 {{{
Plugin 'sjl/gundo.vim'
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

" 窗口显示管理，美化布置{{{

" 状态栏效果显示Powerline{{{
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

" 缩进显示Yggdroot/indentLine{{{
Plugin 'Yggdroot/indentLine'
" }}}

" 目录管理nerdtree{{{
Plugin 'scrooloose/nerdtree'
" 设置显示／隐藏标签列表 
nnoremap <F8> :NERDTreeToggle<cr> 
":TagbarToggle<CR> 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTree_title="[NERDTree]"  
function!  NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction  
" autocmd vimenter * NERDTree
" 当没有文件输入是打开目录树
" autocmd StdinReadPre * let s:std_in=1
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

" }}}

" 标签文件自动生成和语法突出显示easytags{{{
" 需要下载Ctags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
" }}}

" tagbar窗口标签显示, 通过ctags生成标签文件{{{
" 需要下载Ctags 通过 brew install ctags
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

" 进入该项目文件并通过 npm install 安装
Plugin 'ternjs/tern_for_vim'

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

" }}}

" 工具拓展{{{

" emmet高速编写网页类代码 {{{
Plugin 'mattn/emmet-vim'
let g:emmet_html5 = 1
" let g:user_emmet_settings = {
"             \ 'html': {
"             \ 'empty_element_suffix':'/>',
"             \ },
"             \ 'php' : {
"             \ 'extends' : 'html',
"             \ 'filters' : 'c',
"             \ },
"             \ 'xml' : {
"             \ 'extends' : 'html',
"             \ },
"             \ 'haml' : {
"             \ 'extends' : 'html',
"             \ },
"             \}

" 帮助emmet显示snippets提示
Plugin 'jceb/emmet.snippets'
" }}}

" makrdown{{{
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
" or
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
" }}}

Plugin 'eshion/vim-sync'

" }}}

call vundle#end()

filetype plugin indent on
