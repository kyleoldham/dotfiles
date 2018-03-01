call plug#begin('~/.config/nvim/plugged')
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'rking/ag.vim'
  Plug 'iCyMind/NeoSolarized'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  let g:airline_theme='solarized'
call plug#end()

"airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2

set termguicolors
set number

syntax enable
set background=dark
colorscheme NeoSolarized

"Beginning my journey into efficiency
map <C-n> :NERDTreeToggle<CR>
nmap <Leader>f :FZF<CR>
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>w :w<CR>
nmap <Leader>b :CtrlPBuffer<CR>

"General VIM buffer rebinds
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>

set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent
