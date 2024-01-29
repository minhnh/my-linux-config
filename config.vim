" general setup
set nu
set et sts=4 sw=4 ts=4

" YouCompleteMe setup
let g:ycm_python_binary_path = '/usr/bin/python3'

" fzf setup
map ; :Files<CR>
noremap <expr> <F2> ':Rg '.expand('<cword>')

" search and replace
noremap <expr> <F3> ':%s/'.expand('<cword>').'//cgI<left><left><left><left>'

" NERDTree setup
map <C-I> :NERDTreeToggle<CR>

" lightline setup
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'tpope/vim-fugitive'
" Plug 'taketwo/vim-ros'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
" Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'igordejanovic/textx.vim'

call plug#end()

" call ale#Set('python_flake8_options', '--append-config=$HOME/.config/flake8')

" YCM shortcuts
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>

