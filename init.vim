if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 "GoLangIsLife
 call dein#add('fatih/vim-go', { 'on_ft': ['go'] })
 call dein#add('sebdah/vim-delve', { 'on_ft': ['go'] })
 call dein#add('SirVer/ultisnips', { 'on_ft': ['go'] })
 call dein#add('AndrewRadev/splitjoin.vim', { 'on_ft': ['go'] })


 "RustIsAlsoLife?
 call dein#add('rust-lang/rust.vim', { 'on_ft': ['rust'] })

 "Bread&Butter
 call dein#add('~/.cache/dein')
 call dein#add('cohama/lexima.vim')
 call dein#add('vim-syntastic/syntastic')
 call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
 call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
 "easymotion/vim-easymotion
 call dein#add('justinmk/vim-sneak')
 call dein#add('scrooloose/nerdcommenter')
 call dein#add('benekastah/neomake')

 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')

 "Visual
 call dein#add('iCyMind/NeoSolarized')
 call dein#add('tpope/vim-surround')
 call dein#add('prettier/vim-prettier')
 call dein#add('ctrlpvim/ctrlp.vim')

 "YAML
 call dein#add('vim-scripts/yaml.vim', { 'on_ft': ['yaml'] })
 call dein#add('Yggdroot/indentLine')

 "JSON
 call dein#add('elzr/vim-json')

 call dein#end()
 call dein#save_state()
endif

if dein#check_install()
 call dein#install()
endif

filetype plugin indent on
syntax enable

" GOLANG
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
nmap <space>g :GoMetaLinter<CR>

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

"nerdcommenter remap
inoremap \c <C-o>:call NERDComment(0,"toggle")<C-m>

"Beginning my journey into efficiency
autocmd FileType go nmap <space>b  <Plug>(go-build)
autocmd FileType go nmap <space>r  <Plug>(go-run)

"FZF
nmap <space>l :Lines<CR>
nmap <space>s :FZF<CR>
nmap , :Files<CR>

"Format that JSON YO
nmap <space>j :%!jq '.'<CR>

nmap <space>w :w<CR>

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

let g:syntastic_go_checkers = ['gofmt']
let g:go_fmt_command = "goimports"

let g:UltiSnipsExpandTrigger="<tab>"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = "5s"

"General VIM buffer rebinds
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>

"Moving lines will stay selected after the move
xnoremap <  <gv
xnoremap >  >gv

"Tab cycles through deoplete options
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Persistent Undo
set undofile 
set undodir=~/.vim/undodir

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
set clipboard=unnamed " no more \"*y & \"*p
au FileType markdown setlocal wrap
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Prettier
let g:prettier#config#print_width=80
let g:prettier#config#tab_width=2
let g:prettier#config#use_tabs='false'
let g:prettier#config#bracket_spacing='true'
let g:prettier#config#single_quote='true'
let g:prettier#config#trailing_comma='all'
let g:prettier#config#jsx_bracket_same_line='true'
let g:prettier#exec_cmd_async=1
let g:indentLine_char="•"

" Nerd
let g:NERDCustomDelimiters={ 'conf': { 'left': '#' } }
let g:NERDCustomDelimiters={ 's': { 'left': '{/*','right': '*/}' } }

let g:sneak#s_next=1

" Rust
let g:rustfmt_autosave=1

" Important
highlight Pmenu guibg=#161616

" GOLANG
let g:go_snippet_engine="neosnippet"
let g:go_term_mode="split"
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file=expand('%')
  if l:file=~#'^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file=~#'^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

"Disable vim's JSON concealing
let g:vim_json_syntax_conceal = 0

let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup=1
let g:fzf_buffers_jump=1
let g:lexima_enable_basic_rules=1  " AUTOCLOSE PAIRS
let g:lexima_enable_newline_rules=1 " AUTOCLOSE PAIRS

"golang imports
let g:go_fmt_command = "goimports"

function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf' keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

" Ignore Node Modules
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
au! User FzfStatusLine call <SID>fzf_statusline()

command! FZFLines call fzf#run({
\   'source':  <sid>buffer_lines(),
\   'sink':    function('<sid>line_handler'),
\   'options': '--extended --nth=3..',
\   'down':    '60%'
\})
