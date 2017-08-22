set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin system.
Plugin 'gmarik/Vundle.vim'

" Full path finder.
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'wincent/command-t'
" Plugin 'junegunn/fzf.vim'
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
Plugin 'powerline/powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-rhubarb'
Plugin 'ruanyl/vim-gh-line'

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
"set cursorcolumn

" ------------------------------------------------------------
"  Status Line
" ------------------------------------------------------------
":set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
"set statusline=
"set statusline+=%7*\[%n]                                  "buffernr
"set statusline+=%1*\ %<%F\                                "File+path
"set statusline+=%2*\ %y\                                  "FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            "Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
"
"function! HighlightSearch()
"  if &hls
"    return 'H'
"  else
"    return ''
"  endif
"endfunction
"
"hi User1 guifg=#ffdad8  guibg=#880c0e
"hi User2 guifg=#000000  guibg=#F4905C
"hi User3 guifg=#292b00  guibg=#f4f597
"hi User4 guifg=#112605  guibg=#aefe7B
"hi User5 guifg=#051d00  guibg=#7dcc7d
"hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
"hi User8 guifg=#ffffff  guibg=#5b7fbb
"hi User9 guifg=#ffffff  guibg=#810085
"hi User0 guifg=#ffffff  guibg=#094afe

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

" ------------------------------------------------------------
"  CTRL P
" ------------------------------------------------------------
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" let g:ctrlp_map               = '<c-p>'
" let g:ctrlp_cmd               = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_custom_ignore     = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_max_files         = 0
" let g:ctrlp_max_depth         = 40
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'
" " The Silver Searcher
" if executable('ag')
"   " Use ag over grep
"   set grepprg=ag\ --nogroup\ --nocolor
" 
"   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" 
"   "" ag is fast enough that CtrlP doesn't need to cache
"   let g:ctrlp_use_caching = 0
" endif
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

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
