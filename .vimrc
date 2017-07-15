set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

" Plug 
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'craigemery/vim-autotag'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
Plug 'hynek/vim-python-pep8-indent'
Plug 'othree/yajs.vim'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'liuchengxu/space-vim-dark'
Plug 'vimwiki/vimwiki'
Plug 'rizzatti/dash.vim'

" Vundle end
call plug#end()
filetype indent plugin on
filetype plugin on
syntax enable

""" Vim settings
set relativenumber
set number
set shiftwidth=4 tabstop=4 expandtab
set hlsearch
set autoindent
set autoread
set grepprg=ack\ --nogroup\ --column\ $*
set grepformat=%f:%l:%c:%m
let mapleader = "\<Space>"

" Theme
colorscheme space-vim-dark
let g:airline_theme='tomorrow'
"let g:airline_theme='base16_spacemacs'

" Airline settings
set laststatus=2

" NERDTree settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,log,*.pyc
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git*\|log\|\node_modules\|tmp$',
      \ 'file': '\.DS_STORE$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

""" Highlight cursorline
set cursorline
""hi CursorLine cterm=NONE ctermbg=white guibg=darkred guifg=white
""hi CursorColumn cterm=NONE ctermbg=blue ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

""" Highlight overlength
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
