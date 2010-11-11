filetype off
call pathogen#runtime_append_all_bundles()

set nocompatible
set backspace=eol,start,indent
set number
set wrap
set linebreak
set nolist
set history=300
"set smartindent
set tabstop=4 "set tab character to 4 characters
set expandtab "turn tabs into whitespace
set shiftwidth=4 "indent width for auto indent
set smarttab " reads spaces as tabs when backspacing, hence moves four spaces at a time
"set ai "auto-indent
set ruler

" Set to auto read when a file is changed from the outside
set autoread

filetype indent on "indent depends on file-type
filetype plugin on

"Shortcut to auto indent entire file
nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga
nnoremap <F12> :GundoToggle<CR>


"Turn on incremental search with ignore case (except explicit caps)
set incsearch
set hlsearch
set ignorecase
set smartcase
set cmdheight=2 "The command-bar height
set hid "Change buffer - without saving
set showmatch "Show matching brackets when text indicator is over them
set noerrorbells
set novisualbell
set ofu=syntaxcomplete#Complete
set tags=./tags,tags,~/Hacking/hackrelay

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>
map <leader>v :e! ~/.vim/colors/kashif.vim<cr>
map <leader>bash :e! ~/.bashrc<cr>
map <leader>todo :e! ~/Documents/Personal/todo<cr>
map <leader>scr :e! ~/Documents/Personal/scratch<cr>
map <leader>y "+y
map <leader>p "+gP

" Tags
map <leader>retag :!(cd %:p:h;ctags *.[ch])&<cr>
map <leader>cb :TlistToggle<cr>

" Tab configuration
map <leader>tn :tabnew <cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>h :tabprevious<cr>
map <leader>l :tabnext<cr>
map <leader>c :set cursorline! <cr>
map <leader>f :Vexplore<cr>

map <leader>n :nohl<cr>

"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

set encoding=utf8
try
    lang en_US
catch
endtry
set nobackup
set nowb
set noswapfile


"Informative status line
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

"Set color scheme
set t_Co=256
"colorscheme desert
colorscheme kashif
syntax enable

"Enable indent folding
set foldenable
"set fdm=indent

"Set space to toggle a fold
nnoremap <space> za

"Have 3 lines of offset (or buffer) when scrolling
set scrolloff=3


" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

autocmd BufEnter * lcd %:p:h
autocmd BufWritePre * :%s/\s\+$//e

source ~/.vim/python.rc
