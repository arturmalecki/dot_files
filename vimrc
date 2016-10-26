set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin system.
Plugin 'gmarik/Vundle.vim'

" Full path finder.
Plugin 'ctrlpvim/ctrlp.vim'

" Git wrapper.
Plugin 'tpope/vim-fugitive'

" A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows
" whether each line has been added, modified, and where lines have been
" removed.
Plugin 'airblade/vim-gitgutter'

" Lean & mean status/tabline for vim that's light as air.
Plugin 'bling/vim-airline'

" The NERD tree allows you to explore your filesystem and to open files and
" directories. It presents the filesystem to you in the form of a tree which
" you manipulate with the keyboard and/or mouse. It also allows you to perform
" simple filesystem operations.
Plugin 'scrooloose/nerdtree'

" Run your favorite search tool from Vim, with an enhanced results list.
"
" This plugin was designed as a Vim frontend for the Perl module App::Ack. Ack
" can be used as a replacement for 99% of the uses of grep. The plugin allows
" you to run ack from Vim, and shows the results in a split window.
Plugin 'mileszs/ack.vim'

" This plugin is a front for ag, A.K.A. the_silver_searcher. Ag can be used as
" a replacement for 153% of the uses of ack. This plugin will allow you to run
" ag from vim, and shows the results in a split window.
Plugin 'rking/ag.vim'

Plugin 'tpope/vim-rails'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'tpope/vim-bundler'
Plugin 'slim-template/vim-slim'
Plugin 'ngmy/vim-rubocop'
Plugin 'godlygeek/tabular'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elixir-lang/vim-elixir'
Plugin 'geoffharcourt/vim-matchit'

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
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Check those mappings
"map th :tabprev<CR>
"map tl :tabnext<CR>
"map td :tabclose<CR>
"map tt :tabedit<Space>
"map tn :tabnext<Space>


" ------------------------------------------------------------
"  CTRL P
" ------------------------------------------------------------

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_map               = '<c-p>'
let g:ctrlp_cmd               = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore     = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files         = 0
let g:ctrlp_max_depth         = 40
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"let g:ctrlp_extensions        = ['tag']
"let g:ctrlp_use_caching       = 0
"let g:ctrlp_user_command      = 'ag %s --files-with-matches --ignore vendor --ignore bower_components --ignore dist --ignore node_modules --ignore tmp  --nocolor -g ""'
"let g:ctrlp_working_path_mode = 0

set laststatus=2
