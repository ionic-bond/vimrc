" ---------------------��������

" ��ɫ����
set background=dark
"colorscheme SolarizedDark
"colorscheme molokai
"colorscheme wombat256
"colorscheme corporation

" ��ʾ״̬��
set laststatus=2

" ��Ҫʹ��vi�ļ���ģʽ������vim�Լ���
set nocp
set nocompatible

" ��ס�ϴα༭λ��
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" ��Ҫ������
set noerrorbells

" ��ʾ������ʾ
set showcmd

" ����ɫ��
syntax enable

" �﷨���� 
syntax on

" �Զ����� 
set autoindent

" ʹ��c���Ե�����
set cindent

" ͳһ����Ϊ2
set softtabstop=2
set shiftwidth=2

" Tab���Ŀ�� 
"set tabstop=2

" ����Tab�ո�����
set smarttab

" Tab�ÿո����
set expandtab

" ��ʾ�к�
set number

" ��ʷ��¼�� 
set history=100

" �������Դ�Сд 
set ignorecase

" �������ַ����� 
set hlsearch

" ���Դ�Сд����
set incsearch

" �����滻 
set gdefault

" �ڱ༭�����У������½���ʾ���λ�õ�״̬��
set ruler

" ����ļ�����
filetype on

" �����ļ����Ͳ��
filetype plugin on

" Ϊ�ض��ļ�����������������ļ�
filetype indent on

" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu

" ʹ�ظ����backspace����������indent, eol, start��
set backspace=2

" ����backspace�͹�����Խ�б߽�
set backspace=indent,eol,start

" ��������
set hlsearch

" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
set mouse=a
set mouse=v
set selection=exclusive
set selectmode=mouse,key

" ������ʾƥ�������
set showmatch

" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=5

" ������������
set smartindent

" ������������к���
hi cursorline   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
hi cursorcolumn   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
set cursorline
set cursorcolumn

" �������� 
"let &termencoding=&encoding
"set fileencodings=utf-8,gbk,ucs-bom,cp936
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=euc-cn encoding=utf8

" ���Դ�Сд
set ignorecase

" �����͵ײ�������
set scrolloff=5

" gvim�¹�겻��˸
set guicursor+=a:blinkon0

" �������Զ�����
"imap { {<CR>}<ESC>kA

" һ������C++
map <F8> :call CR()<CR>
func! CR()
exec "w"
exec "!g++ -std=c++14 % -o %<"
endfunc

" һ����������C++
map <F9> :call RUN()<CR>
func! RUN()
call CR()
exec "!./%<"
endfunc

" ����Python
map <F10> :w<CR>:!python %<CR>

" ��ϵͳ���а帴��ճ��
map <F3> gg"+yG
map <F4> "+p

