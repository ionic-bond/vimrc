" ---------------------其他设置

" 配色方案
set background=dark
"colorscheme SolarizedDark
"colorscheme molokai
"colorscheme wombat256
"colorscheme corporation

" 显示状态栏
set laststatus=2

" 不要使用vi的键盘模式，而是vim自己的
set nocp
set nocompatible

" 记住上次编辑位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" 不要嘀嘀声
set noerrorbells

" 显示命令提示
set showcmd

" 语言色彩
syntax enable

" 语法高亮 
syntax on

" 自动缩进 
set autoindent

" 使用c语言的缩进
set cindent

" 统一缩进为2
set softtabstop=2
set shiftwidth=2

" Tab键的宽度 
"set tabstop=2

" 智能Tab空格数量
set smarttab

" Tab用空格代替
set expandtab

" 显示行号
set number

" 历史记录数 
set history=100

" 搜索忽略大小写 
set ignorecase

" 搜索逐字符高亮 
set hlsearch

" 忽略大小写搜索
set incsearch

" 行内替换 
set gdefault

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 增强模式中的命令行自动完成操作
set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set backspace=indent,eol,start

" 高亮搜索
set hlsearch

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set mouse=v
set selection=exclusive
set selectmode=mouse,key

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 设置智能缩进
set smartindent

" 高亮光标所在行和列
hi cursorline   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
hi cursorcolumn   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
set cursorcolumn

" 编码设置 
"let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=euc-cn encoding=utf8

" 忽略大小写
set ignorecase

" 顶部和底部缓冲行
set scrolloff=5

" gvim下光标不闪烁
set guicursor+=a:blinkon0

" 大括号自动补充
"imap { {<CR>}<ESC>kA

" 一键编译C++
map <F8> :call CR()<CR>
func! CR()
exec "w"
exec "!g++ -std=c++14 % -o %<"
endfunc

" 一键编译运行C++
map <F9> :call RUN()<CR>
func! RUN()
call CR()
exec "!./%<"
endfunc

" 运行Python
map <F10> :w<CR>:!python %<CR>

" 从系统剪切板复制粘贴
map <F3> gg"+yG
map <F4> "+p

