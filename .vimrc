if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  au CursorHold * silent! execute printf('match Search /%s/', escape(@/, '/\')) | redraw
endif

set syntax=on
set nu

" Esc 映射为 jj
inoremap jj <Esc>

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'sainnhe/everforest'
Plug 'sheerun/vim-polyglot'
Plug 'andymass/vim-matchup'
Plug 'm4xshen/smartcolumn.nvim'
Plug 'shellRaining/hlchunk.nvim'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'
Plug 'cormacrelf/vim-colors-github'
Plug 'voronianski/oceanic-next-color-scheme'
Plug 'jsit/toast.vim'
Plug 'tpope/vim-fugitive'
call plug#end()
nnoremap <C-n> :NERDTree<CR>

if has('termguicolors')
	set termguicolors
endif
set background=light
"set background=dark
"let g:everforset_better_performance = 1
"colorscheme everforest
"colorscheme github
colorscheme toast
let g:github_colors_soft = 1
let g:github_colors_block_diffmark = 0
set termguicolors
augroup toast
  autocmd colorscheme toast hi link Constant Normal
augroup END


set showcmd

set t_Co=256

filetype indent on

set relativenumber

set scrolloff=5

set laststatus=2

set ruler

set showmatch


set hlsearch


set incsearch


set ignorecase


set spell spelllang=en_us


set undofile


set noerrorbells


set history=1000

set wildmenu
set wildmode=longest:list,full
" 高亮当前行和列
"set cursorcolumn
set cursorline

