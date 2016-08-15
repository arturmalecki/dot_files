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

" bind K to grep word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

" ctrlp
let g:ctrlp_map               = '<c-p>'
let g:ctrlp_cmd               = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore     = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_extensions        = ['tag']
"let g:ctrlp_use_caching       = 0
"let g:ctrlp_user_command      = 'ag %s --files-with-matches --ignore vendor --ignore bower_components --ignore dist --ignore node_modules --ignore tmp  --nocolor -g ""'
"let g:ctrlp_working_path_mode = 0

"Check those mappings
"map th :tabprev<CR>
"map tl :tabnext<CR>
"map td :tabclose<CR>
"map tt :tabedit<Space>
"map tn :tabnext<Space>

set laststatus=2
