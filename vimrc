" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'plasticboy/vim-markdown'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
call pathogen#infect()
filetype plugin indent on
filetype on
let &termencoding=&encoding
set fileencodings=utf-8,gbk
map ,dt a<C-R>=strftime('%Y-%m-%d %H:%M')<CR>
au InsertLeave * write
let g:vim_markdown_folding_disabled=1
no<c-k> <c-w>k
no<c-j> <c-w>j 
no<c-h> <c-w>h
no<c-l> <c-w>l


set expandtab 
"set skeyword+=_,$,@,$,#,-
set mouse=a 
set nu 
set nocompatible
set shiftwidth=4 tabstop=4 cindent
set laststatus=2 softtabstop=4 "设定 退格建 可以一次删除掉 4 个空格。
set incsearch hlsearch showmatch matchtime=1
set hidden "在未保存是 容许 切换缓冲区
set clipboard+=unnamed encoding=utf-8 termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk

":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i
"function! ClosePair(char)
"	if getline('.')[col('.') - 1] == a:char
"		return "\<Right>"
"	else
"		return a:char
"	endif
"endfunction

let g:tagbar_width = 30       "设置宽度，默认为40  
"autocmd VimEnter * nested :call tagbar#autoopen(1)    "打开vim时自动打开  
let g:tagbar_right = 1        "在右侧  

let NERDTreeWinSize=35	"NerdTree 显示的宽度"
let NERDChristmasTree=1

function RunRubyP()
	let ftp = &filetype
	if ftp=='ruby'
		exe ":!ruby ./%"
	endif
endfunction

function DoOneFileMake()
	if(expand("%:p:h")!=getcwd())
		echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press redirect to the dir of this file."
	endif
	exec "w"
	call SetCompilation()
	exec "make"
	let Exe = expand("%:p:r")
	exe ":!./%<"
	"exec "copen"
endfunction

function SetCompilation()
	if &filetype=='c'    
		set makeprg=gcc\ %\ -o\ %<
	elseif &filetype=='cpp'||'cc'
		set makeprg=g++\ %\ -o\ %<
	endif
endfunction

"if filereadable("cscope.out") 
"    "cs add cscope.out getcwd()
"endif
"
"if has("cscope")
"	set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
"	" check cscope for definition of a symbol before checking ctags:
"	" set to 1 if you want the reverse search order.
"	set csto=1
"
"	" add any cscope database in current directory
"	if filereadable("cscope.out")
"		cs add cscope.out
"		" else add the database pointed to by environment variable
"	elseif $CSCOPE_DB !=""
"		cs add $CSCOPE_DB
"	endif
"
"	" show msg when any other cscope db added
"    set cscopeverbose
"
"    nmap <C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>
"    nmap <C-G> :cs find g <C-R>=expand("<cword>")<CR><CR>
"    nmap <C-C> :cs find c <C-R>=expand("<cword>")<CR><CR>
"    nmap <C-[> :cs find t <C-R>=expand("<cword>")<CR><CR>
"    nmap <C-E> :cs find e <C-R>=expand("<cword>")<CR><CR>
"    nmap <C-Y> :cs find f <C-R>=expand("<cfile>")<CR><CR>
"    nmap <C-D> :cs find d <C-R>=expand("<cword>")<CR><CR>
"endif

"nmap secton;
nmap tt :sh<cr>
nmap cc :call DoOneFileMake()<CR>
nmap nt :NERDTreeToggle<CR>
nmap tl :TagbarToggle<CR>   "设置快捷键  
nmap bb :call RunRubyP()<CR>

"imap section;
" Ctrl + H            光标移当前行行首
imap <c-h> <ESC>I
" Ctrl + J            光标移下一行行首
imap <c-j> <ESC><Down>I
" Ctrl + K            光标移上一行行尾
imap <c-k> <ESC><Up>A
" Ctrl + L            光标移当前行行尾
imap <c-l> <ESC>A
" Alt  + H            光标左移一格
imap <m-h> <Left>
" Alt  + J            光标下移一格
imap <m-j> <Down>
" Alt  + K            光标上移一格
imap <m-k> <Up>
" Alt  + L            光标右移一格
imap <m-l> <Right>

au BufNewFile,BufRead *.txt  set paste
au BufNewFile,BufRead *.c,*.cpp,*.php,*.html,*.java,*.py,*.js,* set nopaste
set t_Co=256
let g:html_diff_one_file = 0
let g:html_number_lines = 0
"set cursorline
"hi cursorline   cterm=NONE ctermbg=234 ctermfg=NONE
hi cursorline   cterm=NONE ctermbg=255  ctermfg=NONE
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 
"set tags=tags;
"set tags+=/home/service/src/php-5.6
"set tags+=/home/service/src/nginx-1.10.1

set csre
set autochdir
set backspace=indent,eol,start
let g:formatterpath = ['~/.vim/template/']
