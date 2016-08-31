"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My Vim Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bentayloruk/vim-react-es6-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ColorSchemeMenuMaker'
Plugin 'desert-warm-256'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'skammer/vim-css-color'
Plugin 'jiangmiao/auto-pairs'
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=7
set wildmenu
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set number
set relativenumber
let g:jsx_ext_required=0 "enable jsx syntax for .js files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JShint
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let jshint2_read = 1
let jshint2_save = 1
let jshint2_close = 0
let jshint2_confirm = 0
let jshint2_color = 0
let jshint2_min_height = 3
let jshint2_max_height = 12
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax enable
set background=dark
colorscheme Tomorrow-Night-Eighties 
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \}
set laststatus=2

set encoding=utf8
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab, and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500

set ai
set si
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map j gj
map k gk

map <space> /
map <c-space> ?

map <silent> <leader><cr> :noh<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <f2> :NERDTreeToggle <CR>
nnoremap <f7> :tabp <CR>
nnoremap <f8> :tabn <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JsBeautify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
