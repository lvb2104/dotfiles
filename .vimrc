"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use visual studio 2022 must install select next occurrence and vsvim

" Add numbers to each line on the left-hand side.
set number
" Show the mode you are on the last line.
set showmode
" While searching though a file incrementally highlight matching characters as
" you type.
set incsearch
" Use highlighting when doing a search.
set hlsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10
" Show partial command you type in the last line of the screen.
set showcmd

" -----------------------------------------------------------------------

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" Set tab width to 4 columns.
set tabstop=4

" Do not save backup files.
set nobackup

" Allow using backspace
set backspace=indent,eol,start

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" ----------------------------------------------------------------------

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
nnoremap L 5l
nnoremap H 5h
vnoremap L 5l
vnoremap H 5h

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

" Move line up/down with Alt + j/k
nmap <A-j> :m .+1<CR>==
nmap <A-k> :m .-2<CR>==
vmap <A-j> :m '>+1<CR>gv=gv
vmap <A-k> :m '<-2<CR>gv=gv

" Add cursor/caret up/down with Ctrl + Alt + j/k
nnoremap <C-A-j> <C-A-down>
nnoremap <C-A-k> <C-A-up>

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'

call plug#end()

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\%p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
