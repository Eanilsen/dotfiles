set foldmethod=marker

" Pathogen setup
call pathogen#infect()
call pathogen#helptags()

" Editor {{{
" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Set filetype on
filetype on
filetype plugin on
filetype indent on

" Ignore case if not specified
set ignorecase
set smartcase

" Set the forward slash to be the slash of note
set shellslash
if has("unix")
	set shell=bash
else
	set shell=ksh.exe
endif

" Make command line two lines high
set ch=2

" Set visual bell
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to
set hidden

" Make the 'cw' and similar commands put a $ at the end instead of deleting
set cpoptions=ces$

" Show the current command
set showcmd

" Hide the mouse pointer while typing
set mousehide

" Keep history
set history=100

" Set the timeoutlength to 500 ms
set timeoutlen=500

" Make command line completion better
set wildmenu

" Get rid of characters in seperators
set fillchars=""

" Ignore whitespace in diff
set diffopt+=iwhite

" Search settings
set hlsearch
set incsearch

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Show line numbers
set number

" Ignore when autocompleting
set wildignore+=*.o,*.class,*.git,*.svn

" Set colorcolumn
set nowrap
set fo-=t " Don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Colorscheme and syntax highlighting
syntax enable
colors zenburn

" Turn off the arrow keys
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <right> <nop>
inoremap <left> <nop>
vnoremap <right> <nop>

" Keep 5 lines visible above/below the cursor
set scrolloff=5

" }}}
" Keyboard shortcuts {{{
" Change the leader key
let mapleader = ","

" Toggle paste mode
nmap <Leader>p :set invpaste<CR>:set paste?<CR>

" Turn off search highlight
nmap <Leader>n :nohls<CR>

" Edit the vimrc file
nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>sz :so $MYVIMRC<CR>

" Quicksave command
noremap <Leader>s :update<CR>
vnoremap <Leader>s :update<CR>
inoremap <Leader>s :update<CR>

" Close current window
noremap <Leader>q :q<CR>
vnoremap <Leader>q :q<CR>
inoremap <Leader>q :q<CR>

" Quit and save
nnoremap <Leader>x :xa<CR>

" Better window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv
" }}}
" Security {{{
" Remove Vim safety net
set nobackup
set nowritebackup
set noswapfile
" }}}
" Plugins {{{
" Vim-dict {{{
let g:dict_hosts = [["dict.org", ["gcide", "wn", "moby-thes", "vera", "jargon",
            \"foldoc", "bouvier", "devil"]]]
" }}}
" NERDTree {{{
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <S-F7> :NERDTreeClose<CR>
let NERDTreeShowBookmarks=1
" }}}
" Jekyll {{{
let g:jekyll_path = "~/Documents/blog/eanilsen.github.io"
map <Leader>jb :JekyllBuild<CR>
map <Leader>jn :JekyllPost<CR>
map <Leader>jl :JekyllList<CR>
" }}}
" }}}
