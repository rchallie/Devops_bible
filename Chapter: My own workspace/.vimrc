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
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" >

" Fzf.vim
" Install fzf package
" + https://github.com/junegunn/fzf.vim
" <
nmap ; :Files<CR>
" >
