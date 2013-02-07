set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'kien/ctrlp.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'


"ruby
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'nelstrom/vim-textobj-rubyblock'
autocmd FileType ruby,eruby,yaml set tw=80 ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal foldmethod=manual
autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
" vim-scripts repos
Bundle 'vim-scripts/Specky'
Bundle 'vim-scripts/tComment'

Bundle 'bbommarito/vim-slim'

filetype plugin indent on
set number
set showcmd
set ruler
if &t_Co > 2 || has("gui_running")
	syntax on
	set nohlsearch
endif

set hidden


"velikost indentu
set shiftwidth=4
"velikost tabu
set tabstop=4
"set autoindent
"set smartindent
set expandtab
"backspace/delete deletes 4 spaces
set softtabstop=4
set whichwrap=b,s,<,>,h,l
autocmd FileType text setlocal textwidth=72


set fileencodings=utf-8,iso-8859-2
"pocet radku pod a nad editovanym radkem
set scrolloff=2
set listchars=tab:>-,eol:$,precedes:>,trail:-
let g:tex_flavor = "latex"
set grepprg=grep\ -nH\ $*
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

set novisualbell  " No blinking .
set noerrorbells  " No noise.
set list

"backups and saving
set nobackup
set noswapfile
set autowrite
set writebackup
set backupdir=~/.vim/backup,.,~/

"specky
let g:speckyBannerKey        = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey       = "<C-S>r"
let g:speckySpecSwitcherKey  = "<C-S>x"
let g:speckyRunSpecKey       = "<C-S>s"
let g:speckyRunRdocCmd       = "<C-S>h"
let g:speckyWindowType       = 2

map <F5> <C-S>s

