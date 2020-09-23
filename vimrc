" Basic setting
set nocompatible
set t_TI= t_TE=
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number
set relativenumber
set showcmd
set colorcolumn=80
set splitbelow 
set splitright
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" ============== Install Plugin ==========================
call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'zxqfl/tabnine-vim'
call plug#end()
syntax on
let mapleader=" "
" Set colorscheme

let g:seoul256_background = 235
colo seoul256
"set background=dark
"colorscheme solarized8

autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Buffer prev/next
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>
" Better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Enable mouse
if has('mouse')
  set mouse=a
endif

" Shorter save command
nmap <leader>w :w!<cr>

" Alias for accidentally shift enabling captital letter
map :Wq :wq
map :Vsp :vsp
map :Sp :sp
nnoremap <space> zz
" ================ NerdTree setting =============================
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>
let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
