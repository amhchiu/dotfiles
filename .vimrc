" Use Vim settings, rather than Vi settings (Much Better!).
" Must be first, as it changes other options as side effect
set nocompatible

" ================ Plug ===================={{{

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/pangloss/vim-javascript.git'

Plug 'https://github.com/mxw/vim-jsx.git'

Plug 'https://github.com/neomake/neomake.git'

Plug 'https://github.com/leafgarland/typescript-vim.git'

Plug 'bling/vim-airline'

Plug 'https://github.com/scrooloose/nerdtree.git'

call plug#end()

" }}}

" ================ General Config ==================== {{{

let &titlestring = expand('%:p')    "Show filename on window
set title

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=100                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set visualbell					"No sounds
set clipboard=unnamed
" c-x c-o autocomplete
set omnifunc=syntaxcomplete#Complete

" Syntax highlighting ON
if !exists("g:syntax_on")
    syntax enable
endif

set foldmethod=marker			"Fold with marker
set mouse=a

" Mouse wheel scrolling enabled
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" }}}

" ================ Indentation ===================={{{

filetype plugin indent on
set tabstop=4					"tab 4 spaces width
set shiftwidth=4				"4 spaces auto indent
set softtabstop=4				"4 spaces for a tab
set expandtab					"expand tab button to spaces

" }}}

" ================ Search ===================={{{

set incsearch
set hlsearch
set ignorecase
set smartcase

" }}}

" ================ Neomake ===================={{{

" Eslint neomake
let g:neomake_jsx_eslint_maker = {
     \ 'args': ['-f', 'compact'],
        \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
        \ '%W%f: line %l\, col %c\, Warning - %m'
        \ }
let g:neomake_jsx_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter *.jsx Neomake

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']	"javascript uses jshint library
autocmd! BufWritePost,BufEnter *.js Neomake 			"Only use above for .js files. 


" }}}


