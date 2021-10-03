syntax on
" colorscheme badwolf
" colorscheme reclipse
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
" set background=dark
"set list 
set relativenumber
set textwidth=90
set wrap
set linebreak

" Menu when looking for a file
" set wildmenu

" Provide tab completion when looking for files.
set path+=**
set backspace=indent,eol,start
set smartindent
" execute pathogen#infect()
" filetype plugin indent on
"
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

call plug#begin('~/.vim/plugged')

Plug 'vim-latex/vim-latex'
Plug 'plasticboy/vim-markdown'
" Plug 'laoyang945/vimflowy'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Conceal hl
"
function! MyHighlights() abort
  highlight Conceal cterm=bold,underline  ctermfg=121 ctermbg=NONE
endfunction

augroup AdjustConceal
    autocmd!
    autocmd ColorScheme * call MyHighlights()
augroup END
colorscheme reclipse

set conceallevel=1
let g:tex_conceal="abdgm"
let g:tex_flavor='latex'
let g:Tex_comment_nospell= 1
let g:Tex_DefaultTargetFormat = 'pdf'

"" Fancy latex figures stuff by Gillescastel
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.'./media/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.'./media/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

"-- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened
