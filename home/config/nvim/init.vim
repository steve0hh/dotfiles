source ~/.dotfiles/bundles.vim

" Gui stuffs
set t_Co=256                                              " set terminal to use 256 colors
syntax on
color molokai
set guifont=monaco:h14

" Basic Setup
set nocompatible                                           " Use vim, no vi defaults
set nonumber                                               " show line number
set noswapfile                                             " set no swap file
set shell=bash\ -l

" Whitespace
set list                                                   " Show invisible characters
set expandtab                                              " expand tabs into spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Searching
set ignorecase                                             " case insensitive searching
set smartcase                                              " but become case sensitive if you type uppercase characters

" Mappings
let mapleader = ' '                                        " map leader to space
nnoremap <leader>b = :ctrlpbuffer<cr>
nnoremap <leader>q = :exit<cr>
nnoremap <leader>w = :write<cr>
nnoremap <leader>rev = :Eview<space>
nnoremap <leader>rec = :Econtroller<space>
nnoremap <leader>rem = :Emodel<space>
nnoremap <leader>gs = :Gstatus<cr>
nnoremap <leader>gd = :Gdiff<cr>
nnoremap <leader>ev = :vsplit $MYVIMRC<cr>
nnoremap <leader>so = :source $MYVIMRC<cr>

" Git settings set spell check and textwidth to 72
autocmd Filetype gitcommit setlocal spell textwidth=72

" " Split navigations
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" netrw settings
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'


"""""""""""""""""""""""""
" Running tests settings and mappings
"""""""""""""""""""""""""
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Launch marked app via leader+m
:nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>

" treat .md files as markdown
if has("autocmd")
  autocmd BufNewFile,BufRead *.md setfiletype markdown
endif

"""""""""""""""""""""""""
" ctrl-p settings
"""""""""""""""""""""""""
" ignore files in ctrl-p
:let g:ctrlp_custom_ignore = {
      \ 'file': '\.exe$\|\.class$\|\.dat$',
      \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|_build$\'
      \ }
let g:ctrlp_show_hidden = 1

"""""""""""""""""""""""""
" UltiSnipts settings
"""""""""""""""""""""""""
" Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"""""""""""""""""""""""""
" Strip trailing whitespace
"""""""""""""""""""""""""
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"""""""""""""""""""""""""
" React settings
"""""""""""""""""""""""""
let g:jsx_ext_required = 0
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
let g:syntastic_javascript_checkers = ['eslint']


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"""""""""""""""""""""""""
" deoplete settings
"""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ deoplete#mappings#manual_complete()


"""""""""""""""""""""""""
" use homebrew python
"""""""""""""""""""""""""
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
