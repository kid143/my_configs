" General

set number
set showbreak=+++
set showmatch
set visualbell
set hlsearch
set smartcase
set nolinebreak
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler
set backspace=indent,eol,start

" Vim plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'vim-scripts/nerdtree-ack', {'on': 'NERDTreeToggle'}
Plug 'vim-scripts/bufexplorer.zip'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'mxw/vim-jsx'
Plug 'bling/vim-airline'
Plug 'kchmck/vim-coffee-script'
Plug 'Yggdroot/indentLine'

call plug#end()

call plug#end()

" Tab support
nmap <F7> :tabn<CR>
nmap <F8> :tabp<CR>

" Monokai Theme
syntax enable
colorscheme molokai
let g:molokai_original = 1

" NERD Tree
noremap <S-m> :NERDTreeToggle<CR>

" bufexploer
noremap <CR> :BufExplorer<CR>

" Powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'

" Syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_javscript_checkers = ['eslint']

let g:jsx_ext_required = 0 " allow jsx in normal js files

" Airline
let g:airline#extensions#tabline#enabled = 1

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'


let mapleader = "`"

nnoremap <leader>ss :source $MYVIMRC<CR>
