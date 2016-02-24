call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/syntastic'
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdcommenter'
Plug 'groenewege/vim-less'
Plug 'derekwyatt/vim-scala'
Plug 'tpope/vim-haml'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'othree/html5.vim'
Plug 'nono/vim-handlebars'
Plug 'mklabs/grunt.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'scrooloose/nerdtree'
Plug 'digitaltoad/vim-jade'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'keith/swift.vim'

call plug#end() 

syntax on
filetype indent plugin on 
set nocompatible
set title
set ruler
set number
set esckeys
set hlsearch
set showmode
set showmatch
set expandtab
set linebreak
set tabstop=2
set scrolloff=2
set shiftwidth=2
set softtabstop=2
set encoding=UTF-8
set fileencodings=UTF-8
set backspace=eol,start,indent

"If tabstop settings does not work, check by 
"":verbose set tabstop sw softtabstop expandtab"

map j gj
map k gk
"map <Up> <NOP>
"map <Down> <NOP>
"map <Left> <NOP>
"map <Right> <NOP>
"imap <Up> <NOP>
"imap <Down> <NOP>
"imap <Left> <NOP>
"imap <Right> <NOP>

let g:goyo_width = 70
let g:limelight_conceal_ctermfg = 240
let g:limelight_default_coefficient = 0.9

let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['scala', 'java'] }

cabbrev E Explore

if has("autocmd") 
  " When editing a file, always jump to the last known cursor position. 
  " Don't do it when the position is invalid or when inside an event handler 
  " (happens when dropping a file on gvim). 
  autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 

  autocmd BufEnter * let &titlestring = expand("%:t") . " :: vim"

  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
endif

" python
au Bufenter *.py map <F5> :!python %<CR>

" c
au Bufenter *.c map <F5> :!gcc % -lm && ./a.out<CR>

" ruby
au Bufenter *.rb map <F5> :!ruby %<CR>

" js
au Bufenter *.js map <F5> :!node %<CR> 
