set foldmethod=marker
set foldlevel=99

" Vundle {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'raimondi/delimitmate'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sirver/ultisnips'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on
" }}}
" Editor {{{
" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Ignore case if not specified
set ignorecase
set smartcase

" Set the forward slash to be the slash of note
set shellslash
if has("unix")
	set shell=zsh
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

" Show line numbers
set number

" Ignore when autocompleting
set wildignore+=*.o,*.class,*.git,*.svn,*/tmp/*,*.so,*.swp,*.zip

" Set colorcolumn
set nowrap
set fo-=t " Don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Colorscheme and syntax highlighting
syntax enable
set background=dark
colorscheme solarized

" Turn off the arrow keys
inoremap <up> <nop>
vnoremap <up> <nop>
noremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
noremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
noremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>
noremap <right> <nop>

" Keep 5 lines visible above/below the cursor
set scrolloff=5

" }}}
" Keyboard shortcuts {{{
" Change the leader key
let mapleader = "\<SPACE>"

" Toggle paste mode
nmap <Leader>p :set invpaste<CR>:set paste?<CR>

" Turn off search highlight
nmap <Leader>n :nohls<CR>

" Edit the vimrc file
nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>sz :so $MYVIMRC<CR>

" Quicksave command
noremap <Leader>s :update<CR>

" Close current window
noremap <Leader>q :q<CR>

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
" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" UltiSnips {{{
set runtimepath+=~/.vim/my-snippets/
let g:UltiSnipsSnippetsDir='~/.vim/my-snippets/UltiSnips/'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" }}}
" IndentLine {{{
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'
" }}}
" delimitMate {{{
let delimitMate_expand_cr = 1
" }}}
" CtrlP {{{
let g:ctrlp_map = '<leader>t'
set wildignore+=*/build/**
let g:ctrlp_use_caching = 0 " disable caching
" }}}
" }}}
