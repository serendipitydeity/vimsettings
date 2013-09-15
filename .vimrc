execute pathogen#infect()
syntax on

filetype indent on
filetype plugin on
set encoding=UTF-8
set fileencodings=UTF-8
set clipboard=unnamed
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cindent
set smartindent
set ruler
set scrolloff=2
if has ("mouse")
	set mouse=a
endif
set showmatch
set showmode
set esckeys
set nocompatible

inoremap <Up> <NOP>
vnoremap <Up> <NOP>
inoremap <Down> <NOP>
vnoremap <Down> <NOP>
inoremap <Left> <NOP>
vnoremap <Left> <NOP>
noremap <Right> <NOP>
vnoremap <Right> <NOP>

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

augroup SetCMS
  autocmd FileType play2-html let &l:commentstring='<!--%s-->'
augroup END

if has("autocmd") 
  " When editing a file, always jump to the last known cursor position. 
  " Don't do it when the position is invalid or when inside an event handler 
  " (happens when dropping a file on gvim). 
  autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 
 
endif " has("autocmd")

" get easier to use and more user friendly vim defaults
set backspace=eol,start,indent
set hlsearch
set ai si
set number
