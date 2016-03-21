set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin system
Plugin 'gmarik/Vundle.vim'

" Full path finder
Plugin 'ctrlpvim/ctrlp.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'flazz/vim-colorschemes'

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
