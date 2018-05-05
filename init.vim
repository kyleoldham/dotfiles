if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 "Bread&Butter
 call dein#add('~/.cache/dein')
 call dein#add('cohama/lexima.vim')
 call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
 call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
 "easymotion/vim-easymotion
 "justinmk/vim-sneak
 call dein#add('scrooloose/nerdcommenter')
 call dein#add('benekastah/neomake')
 call dein#add('scrooloose/nerdtree',
      \{'on_toggle': 'NERDTreeToggle'})

 "Visual
 call dein#add('iCyMind/NeoSolarized')
 call dein#add('tpope/vim-surround')
 call dein#add('prettier/vim-prettier')
 call dein#add('ctrlpvim/ctrlp.vim')

 "YAML
 call dein#add('vim-scripts/yaml.vim')
 call dein#add('Yggdroot/indentLine')

 call dein#end()
 call dein#save_state()
endif

if dein#check_install()
 call dein#install()
endif

filetype plugin indent on
syntax enable

"nerdcommenter remap
inoremap \c <C-o>:call NERDComment(0,"toggle")<C-m>

"Beginning my journey into efficiency
nmap <space>t :NERDTreeToggle<CR>
nmap <space>w :w<CR>
nmap <space>b :CtrlPBuffer<CR>

"FZF
nmap <space>l :Lines<CR>
nmap <space>s :FZF<CR>
nmap <space>f :Files<CR>

"General VIM buffer rebinds
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>

"Tab cycles through deoplete options
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

syntax enable
colorscheme NeoSolarized
set background=dark
set expandtab         "tab to spaces
set tabstop=2         "the width of a tab
set shiftwidth=2      "the width for indent<Paste>
set number
set termguicolors
set laststatus=2
set nowrap
au FileType markdown setlocal wrap

let g:deoplete#enable_at_startup=1
let g:fzf_buffers_jump=1
let g:lexima_enable_basic_rules=1  " AUTOCLOSE PAIRS
let g:lexima_enable_newline_rules=1 " AUTOCLOSE PAIRS
