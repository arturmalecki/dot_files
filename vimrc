call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype on
filetype plugin on
filetype indent on

colorscheme default
set guifont=Consolas\ 12

set encoding=utf-8
set ts=2 sts=2 sw=2 expandtab
set listchars=tab:▸\ ,eol:¬
set laststatus=2
set statusline=%<%F%h%m%r%h%w%y[%{&encoding}]\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
set mouse=a
set backspace=2
set autoindent
set wildmenu
set hlsearch
set incsearch
set ignorecase
set paste
set nobackup
set wrap linebreak nolist
set showbreak=>\ 
set number

let mapleader = ","
nmap <leader>l :set list!<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
map th :tabprev<CR>
map tl :tabnext<CR>
map td :tabclose<CR>
map tt :tabedit<Space>
map tn :tabnext<Space>

highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd BufWritePost .vimrc source $MYVIMRC
