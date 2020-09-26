
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



" Basic setting
set nocompatible
set encoding=utf-8
" Enable autocompletion
set wildmode=longest,list,full

" Turn off some weird character to show up
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
set colorcolumn=88
set splitbelow 
set splitright
"highlight ColorColumn ctermbg=0 guibg=lightgrey
set tags=tags
" TAG JUMPING
" Create the `tag` file (may need to install ctags first)
command! MakeTags !ctags -R .
syntax on
let mapleader=" "
" Goyo plugin to make text more readable
map <leader>g :Goyo \| set linebreak<CR>
" Set colorscheme
"let g:seoul256_background = 235
"colo seoul256
set background=dark
colorscheme solarized8

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

" FINDING FILES
" Search down into subfolders
" Provides tab-completetion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu


autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Copy and paste

vnoremap <C-c> "+y
map <C-p> "+p
map <C-a> ggVG

