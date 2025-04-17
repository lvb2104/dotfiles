" Basic settings
set number
set relativenumber
set showmode
set incsearch
set hlsearch
set ignorecase
set smartcase
set scrolloff=8
set showcmd
set visualbell

" Yank + flash highlight using visual mode
vnoremap y y:call HighlightLastYank()<CR>

function! HighlightLastYank()
  " Move back to last visual selection and flash it
  normal! `[v`]
endfunction

" jk to escape in insert mode
inoremap jk <Esc>

" Move 5 lines with J and K in normal and visual modes
nnoremap J 5j
nnoremap K 5k
vnoremap J 5j
vnoremap K 5k

" Indentation in visual mode
vnoremap < <gv
vnoremap > >gv

" Yank to system clipboard
nnoremap y "+y
vnoremap y "+y

" Paste from system clipboard
nnoremap p "+p
vnoremap p "+p

" Delete to system clipboard
nnoremap d "+d
vnoremap d "+d
nnoremap dd "+dd
vnoremap x "+x
