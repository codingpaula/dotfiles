" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

let mapleader = ','

" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3

Plug 'sheerun/vim-polyglot'

Plug 'franbach/miramare'

" You will load your plugin here
" Make sure you use single quotes
" Initialize plugin system
call plug#end()

set termguicolors

"the configuration options should be placed before 'colorscheme miramare'
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1

colorscheme miramare

