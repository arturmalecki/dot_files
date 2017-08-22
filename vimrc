set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin system.
Plugin 'gmarik/Vundle.vim'

" Full path finder.
Plugin 'junegunn/fzf'

" Git wrapper.
Plugin 'tpope/vim-fugitive'

" A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows
" whether each line has been added, modified, and where lines have been
" removed.
Plugin 'airblade/vim-gitgutter'

" Lean & mean status/tabline for vim that's light as air.
" Plugin 'bling/vim-airline'

" The NERD tree allows you to explore your filesystem and to open files and
" directories. It presents the filesystem to you in the form of a tree which
" you manipulate with the keyboard and/or mouse. It also allows you to perform
" simple filesystem operations.
Plugin 'scrooloose/nerdtree'

" This plugin is a front for ag, A.K.A. the_silver_searcher. Ag can be used as
" a replacement for 153% of the uses of ack. This plugin will allow you to run
" ag from vim, and shows the results in a split window.
Plugin 'rking/ag.vim'

Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'slim-template/vim-slim'
Plugin 'ngmy/vim-rubocop'
Plugin 'godlygeek/tabular'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'geoffharcourt/vim-matchit'
Plugin 'powerline/powerline'
Plugin 'tpope/vim-rhubarb'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype plugin indent on
syntax on
"colorscheme github
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set number
set hls
set lbr
set noswapfile
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set incsearch
set hlsearch
set splitbelow
set splitright
set mouse=a
let mapleader=","
set shell=/bin/zsh
set colorcolumn=120
highlight ColorColumn ctermbg=gray
set visualbell t_vb=

syntax enable
set background=light
"colorscheme solarized

" Highlight column and row of cursor
set cursorline

" ------------------------------------------------------------
"  Key Mappings
" ------------------------------------------------------------
map <leader>y "*y
noremap _ dd p
noremap - dd k P
" Bind K to grep word under cursor
nnoremap <leader>s :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" Move around splits with <c-hjkl>
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Editing and reloading vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Check those mappings
"map th :tabprev<CR>
"map tl :tabnext<CR>
"map td :tabclose<CR>
"map tt :tabedit<Space>
"map tn :tabnext<Space>
"
vnoremap <leader>/ y:tabnew \| :Ag "<C-R>""<CR>

set laststatus=2

set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256
"set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set showmatch
set matchtime=3

" General
" =======
" Disable visual bell
set t_vb= 

" Indicates a fast terminal connection
set ttyfast

" Force older regex engine
set re=1

" Make backsapce work like most other apps
set backspace=2

" Copy and Paste
" ==============
set clipboard=unnamed

vmap <F2> :!pbcopy<CR>  

vmap <F3> :w !pbcopy<CR><CR>
nmap <F3> :.w !pbcopy<CR><CR>

nmap <F4> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F4> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

" Full path finder

nmap <C-p> <Esc>:FZF<CR>
