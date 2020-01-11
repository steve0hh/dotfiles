if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" General enhancements
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-dispatch'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim'

Plug 'rking/ag.vim'

" Custom textobjects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-line'
Plug 'nelstrom/vim-textobj-rubyblock'

" Ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' | Plug 'steve0hh/vim-react-es6-snippets'

" Vanity plugins
Plug 'tomasr/molokai'
Plug 'bling/vim-airline'

" Netrw enhancement
Plug 'tpope/vim-vinegar'

" Ruby enhancements
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'

" Javascript enhancements
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

" Markdown enhancements
Plug 'tpope/vim-markdown', {'for': ['md', 'markdown']}

" Elixir enhancements
Plug 'elixir-lang/vim-elixir'
Plug 'janko-m/vim-test'

" Golang enhancements
Plug 'fatih/vim-go'

" Dart and flutter enhancements
Plug 'dart-lang/dart-vim-plugin'

" Tmux stuffs
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
