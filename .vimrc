
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'leafgarland/typescript-vim'

Plug 'b4b4r07/vim-hcl'

Plug 'jiangmiao/auto-pairs'

Plug 'dylanaraps/wal.vim'

Plug 'christoomey/vim-tmux-navigator'

Plug 'benmills/vimux'

Plug 'kana/vim-arpeggio'

Plug 'vim-syntastic/syntastic'

Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()


"colorscheme wal
colorscheme darkblue

set expandtab
set autoindent
set smartindent
syntax on
set tabstop=4
set shiftwidth=4


set number

set clipboard=unnamedplus

let mapleader=','

nnoremap <leader>ev :e ~/.vimrc<enter>
nnoremap <leader>sv :source ~/.vimrc<enter>

nnoremap <leader>q :q<enter>
nnoremap <leader>Q :q!<enter>
nnoremap <leader>w :w<enter>
nnoremap <leader>W :w!<enter>
nnoremap <leader>x :x<enter>
nnoremap <leader>X :x!<enter>

nnoremap <leader>b :ls<enter>:b<space>
nnoremap <leader>d :bd<enter>

nnoremap <leader>n :NERDTreeToggle<enter>:vertical resize 30<enter>

inoremap jk <esc>

nnoremap Y y$

" MOVEMENT
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Open new splits below or right
set splitbelow
set splitright

" Shortcut for vertical splits
nnoremap <silent> vv <C-w>v

" Vimux command shortcut
map <leader>vp :VimuxPromptCommand<enter>
autocmd VimEnter * Arpeggiomap vp :VimuxPromptCommand<enter>

" Run last command
map <leader>vl :VimuxRunLastCommand<enter>
autocmd VimEnter * Arpeggiomap vl :VimuxRunLastCommand<enter>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<enter>
autocmd VimEnter * Arpeggiomap vi :VimuxInspectRunner<enter>


function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <Leader>vs "vy :call VimuxSlime()<CR>


" Buffer switching vim chord

 
 
