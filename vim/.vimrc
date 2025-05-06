" Use Vim settings, rather than Vi settings (Much Better!).
" Must be first, as it changes other options as side effect
set nocompatible

" ================ Plug ===================={{{

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'bling/vim-airline'

call plug#end()

" }}}

" ================ General Config ==================== {{{

let &titlestring = expand('%:p')    "Show filename on window
set title

set number                      "Line numbers are good
set relativenumber              "Relative line number
set showcmd                     "Show incomplete cmds down the bottom
set visualbell					"No sounds
set clipboard=unnamed

let g:markdown_recommended_style=0

" Syntax highlighting ON
syntax enable
set re=0

" set hlsearch

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
set shiftwidth=2				"2 spaces auto indent
set softtabstop=2				"2 spaces for a tab
set expandtab					"expand tab button to spaces
set tabstop=2					"tab 2 spaces width

" }}}

" ================ Vim Ale ===================={{{
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>gr :ALEFindReferences<CR>
nnoremap <leader>f :ALEFix<CR>
nnoremap <leader>k :ALEHover<CR>

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\}

" }}}

