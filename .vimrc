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

" ����tab�ո�����
set smarttab

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

" ---------------------��̾���ģ��

map <F5> :call SetTitle()<CR>
func SetTitle()
let l = 0
let l = l + 1 | call setline(l,'#include <iostream>')
let l = l + 1 | call setline(l,'#include <cstdio>')
let l = l + 1 | call setline(l,'#include <cmath>')
let l = l + 1 | call setline(l,'#include <cstring>')
let l = l + 1 | call setline(l,'#include <cstdlib>')
let l = l + 1 | call setline(l,'#include <algorithm>')
let l = l + 1 | call setline(l,'#include <vector>')
let l = l + 1 | call setline(l,'#include <queue>')
let l = l + 1 | call setline(l,'#include <stack>')
let l = l + 1 | call setline(l,'#include <set>')
let l = l + 1 | call setline(l,'#include <map>')
let l = l + 1 | call setline(l,'#include <string>')
let l = l + 1 | call setline(l,'#include <bitset>')
let l = l + 1 | call setline(l,'using namespace std;')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'#define LL long long')
let l = l + 1 | call setline(l,'#define ULL unsigned long long')
let l = l + 1 | call setline(l,'#define PB push_back')
let l = l + 1 | call setline(l,'#define MP make_pair')
let l = l + 1 | call setline(l,'#define PII pair<int,int>')
let l = l + 1 | call setline(l,'#define VI vector<int>')
let l = l + 1 | call setline(l,'#define VPII vector<PII>')
let l = l + 1 | call setline(l,'#define X first')
let l = l + 1 | call setline(l,'#define Y second')
let l = l + 1 | call setline(l,'#define IOS ios::sync_with_stdio(0);cin.tie(0);')
let l = l + 1 | call setline(l,'#define IN freopen("in", "r", stdin);')
let l = l + 1 | call setline(l,'#define OUT freopen("out", "w", stdout);')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'int main()')
let l = l + 1 | call setline(l,'{')
let l = l + 1 | call setline(l,'  IN;')
let l = l + 1 | call setline(l,'  return 0;')
let l = l + 1 | call setline(l,'}')
endfunc

map <F6> :call SetTitle2()<CR>
func SetTitle2()
let l = 0
let l = l + 1 | call setline(l,'#include <bits/stdc++.h>')
let l = l + 1 | call setline(l,'using namespace std;')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'#define LL long long')
let l = l + 1 | call setline(l,'#define ULL unsigned long long')
let l = l + 1 | call setline(l,'#define PB push_back')
let l = l + 1 | call setline(l,'#define MP make_pair')
let l = l + 1 | call setline(l,'#define PII pair<int,int>')
let l = l + 1 | call setline(l,'#define VI vector<int>')
let l = l + 1 | call setline(l,'#define VPII vector<PII>')
let l = l + 1 | call setline(l,'#define X first')
let l = l + 1 | call setline(l,'#define Y second')
let l = l + 1 | call setline(l,'#define IOS ios::sync_with_stdio(0);cin.tie(0);')
let l = l + 1 | call setline(l,'#define IN freopen("in", "r", stdin);')
let l = l + 1 | call setline(l,'#define OUT freopen("out", "w", stdout);')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'int main()')
let l = l + 1 | call setline(l,'{')
let l = l + 1 | call setline(l,'  IN;')
let l = l + 1 | call setline(l,'  return 0;')
let l = l + 1 | call setline(l,'}')
endfunc

