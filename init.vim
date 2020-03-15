" Plugins using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
call plug#end()

let g:polyglot_disabled = ['latex']

" Set themes and colors
syntax enable
set background=dark
colorscheme solarized
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'

"Enable buffer bar in top
let g:airline#extensions#tabline#enabled = 1

nnoremap <C-k> :bn <CR>

" Change leader from \ to ,
let mapleader=","

" Easy file browsing:
map <C-n> :NERDTreeToggle<CR>

" Set relative line number
set number
set relativenumber

"LaTeX variables
let g:tex_flavor="latex"
let g:vimtex_quixkfix_mode=0
let g:vimtex_fold_enabled = 1

"UltiSnips Variables"
let g:UltiSnipsExpandTrigger = '<C-SPACE>'
let g:UltiSnipsJumpForwardTrigger = '<C-SPACE>'
let g:UltiSnipsJumgBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

"Enable spell check in latex-files:"
if has ('autocmd')
	autocmd BufNewFile,BufRead *.tex set spell
endif
