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

call plug#end()

call plug#end()
" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>   	"+gP
map <S-Insert>  	"+gP

cmap <C-V>  	<C-R>+
cmap <S-Insert> 	<C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert> 	<C-V>
vmap <S-Insert> 	<C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>   	<C-V>

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

" Powerline
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'

" Airline
let g:airline#extensions#tabline#enabled = 1

let mapleader = "`"

nnoremap <leader>ss :source $MYVIMRC<CR>
