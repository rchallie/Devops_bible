" Vim settings
" >
:set number
:set mouse=a
:set noswapfile
:set tabstop=2
:set shiftwidth=2
:set expandtab
" <

" Pathogen
" https://github.com/tpope/vim-pathogen
" Necessary configuration
" >
call pathogen#infect()
syntax on
filetype plugin indent on
" <

" NerdTree
" https://github.com/preservim/nerdtree
" Default keyboard mapping
" <
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" >
" Disable arrow icons
" >
let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"
" <

" Fzf.vim
" Install fzf package
" + https://github.com/junegunn/fzf.vim
" <
nmap ; :Files<CR>
" >
