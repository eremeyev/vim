set t_Co=256

set encoding=utf-8
"set list

" colorscheme blackboard 
colorscheme zenburn
" colorscheme mycolors

set backspace=2

set smartindent
" let g:miniBufExplMapWindowNavVim = 1 
" let g:miniBufExplMapWindowNavArrows = 1 
" let g:miniBufExplMapCTabSwitchBufs = 1 
" let g:miniBufExplModSelTarget = 1

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

syntax on

" NERDTree conf
let NERDTreeWinSize=35
" map to toogle NERDTree window
nmap <silent> <Leader>t :CommandT<CR>
nmap <silent> <Leader>b :CommandTBuffer<CR>

set mouse=a

noremap <F2> <c-o>:update<cr>

nmap <silent> <c-n> :NERDTreeToggle<cr>

autocmd BufEnter * lcd %:p:h

" Bubble single lines
nmap <C-Up> ddkP
nmap <C-Down> ddp
" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]
map <Esc><Esc> :q <Cr>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :vsplit $MYVIMRC<CR>

set ts=2 sts=2 sw=2 expandtab
map <Tab> <C-w><C-w>
set number

set guioptions=em
set showtabline=2
