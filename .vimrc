"" Vundle settings 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
                                       
" Vundle plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'craigemery/vim-autotag'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'othree/yajs.vim'
Plugin 'flazz/vim-colorschemes'


" Vundle end
call vundle#end()
filetype indent plugin on
syntax enable

" Airline settings
set laststatus=2
"""let g:airline_theme='tomorrow'

" NERDTree settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,log
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

""" Misc
set number
set relativenumber 
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set autoindent
set autoread
