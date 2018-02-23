call plug#begin('~/.config/nvim/plugged')
"deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
"fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"ag searching
Plug 'rking/ag.vim'
"solarized
Plug 'iCyMind/NeoSolarized'
call plug#end()

set termguicolors
set number

syntax enable
set background=dark
colorscheme NeoSolarized

map <C-n> :NERDTreeToggle<CR>

set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent<Paste><Paste>
