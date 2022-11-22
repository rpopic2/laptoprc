if exists('g:vscode') 
    finish
endif

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/vim-cursorword'
call plug#end()

"nvim settings
set background=light
"colorscheme rose-pine-light

"rust related settings
syntax enable
filetype plugin indent on

set mouse=a

set clipboard+=unnamedplus

set tabstop=4 "How many columns of whitespace is a \t char worth
set shiftwidth=4 "How many columns of whitespace a 'level of indentation' is worth?
set softtabstop=4 "How many columns of whitespace is a tab keypress of a backspace keypress worth
set expandtab "You never want to se a \t agains inyour file, rather tabs keypresses will be expanded into spaces

"key bindings
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>" 

map <space><space> :
