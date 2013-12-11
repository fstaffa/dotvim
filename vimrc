set nocompatible
filetype off

set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/vundle/
  call vundle#rc('$HOME/vimfiles/bundle/')
else
  " Usual quickstart instructions
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif
call vundle#rc()


Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'
Bundle 'kien/ctrlp.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sjl/gundo.vim'
nnoremap <F4> :GundoToggle<CR>
au VimEnter * RainbowParenthesesToggle
au BufRead * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"javascript
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab tabstop=2 softtabstop=2
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

"clojure
Bundle 'tpope/vim-fireplace.git'
Bundle 'tpope/vim-classpath.git'
Bundle 'guns/vim-clojure-static.git'

"ruby
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'slim-template/vim-slim'
autocmd FileType ruby,eruby,yaml set tw=80 ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal foldmethod=manual
autocmd User Rails set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" vim-scripts repos
Bundle 'vim-scripts/paredit.vim'
Bundle 'vim-scripts/Specky'
Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdtree.git'
nnoremap <F3> :NERDTreeToggle<CR>
Bundle 'vim-scripts/taglist.vim'

"scala
Bundle 'derekwyatt/vim-scala'

"solarized
Bundle 'altercation/vim-colors-solarized.git'
set background=dark
colorscheme solarized
"if $COLORTERM == 'gnome-terminal'
  set t_Co=256
"endif
let g:solarized_termcolors=256

filetype plugin indent on
filetype plugin on
runtime macros/matchit.vim
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
set visualbell
set backupdir=~/.vim/backup,.,~/

"movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"specky
let g:speckyBannerKey        = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey       = "<C-S>r"
let g:speckySpecSwitcherKey  = "<C-S>x"
let g:speckyRunSpecKey       = "<C-S>s"
let g:speckyRunRdocCmd       = "<C-S>h"
let g:speckyWindowType       = 2

map <F5> <C-S>s

set history=1000

vnoremap . :norm.<CR>
