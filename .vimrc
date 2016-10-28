set nu

set backupdir=$HOME/.vim_bkp_files
set dir=$HOME/.vim_bkp_files

syntax on
set ignorecase
set smartcase
set fileformat=unix

let g:jsx_ext_required = 0

" move between panes in split mode
nnoremap <Leader>m <C-w><C-w>

" easily navigate buffers
set wildchar=<Tab> wildmenu wildmode=full


" put some context around the current line
:set scrolloff=5

" wrap lines
set wrap
