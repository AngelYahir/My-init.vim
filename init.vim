    " ##############..... ##############   
    " ##############......##############   
    "   ##########..........##########     
    "   ##########........##########       
    "   ##########.......##########        
    "   ##########.....##########..        
    "   ##########....##########.....      
    " ..##########..##########.........    
  " ....##########.#########.............  
    " ..################JJJ............    
    "   ################.............      
    "   ##############.JJJ.JJJJJJJJJJ      
    "   ############...JJ...JJ..JJ  JJ     
    "   ##########....JJ...JJ..JJ  JJ      
    "   ########......JJJ..JJJ JJJ JJJ     
    "   ######    .........                
    "               .....                  
    "                 . 

set number
set mouse=a
set clipboard=unnamed
set numberwidth=1
syntax enable
set encoding=utf-8
set ruler
set showcmd
set sw=2
set showmatch
set relativenumber
set laststatus=2
set noshowmode

 " ____  _             _           
" |  _ \| |_   _  __ _(_)_ __  ___ 
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
 "               |___/


call plug#begin('~/.local/nvim/autoload/plug.vim')

"Temas
Plug 'morhetz/gruvbox'
Plug 'megantiu/true.vim'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'fatih/molokai'

"IDE
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'

call plug#end()

  " ____             __ _                            _             
 " / ___|___  _ __  / _(_) __ _ _   _ _ __ __ _  ___(_) ___  _ __  
" | |   / _ \| '_ \| |_| |/ _` | | | | '__/ _` |/ __| |/ _ \| '_ \ 
" | |__| (_) | | | |  _| | (_| | |_| | | | (_| | (__| | (_) | | | |
 " \____\___/|_| |_|_| |_|\__, |\__,_|_|  \__,_|\___|_|\___/|_| |_|
  "                       |___/      


"Themes
"Darkthemes

"colorscheme jellybeans

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" colorscheme molokai

if (has("termguicolors"))
  set termguicolors
endif

"Purple themes

" colorscheme true
" colorscheme shades_of_purple

"Leader key (space)
let mapleader=" "

"Atajos
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>e :wq<CR>

"Autocomplete
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i


"Easymotion
nmap <leader>s <Plug>(easymotion-s2)

"NerdTree
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1


"Plugins configuration

"Ligthline
"let g:lightline = {
"    \ 'active': {
"    \	'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
"    \	'rigth': [['kitestatus'], ['filetype', 'percent', 'lineinfo']]
"    \ },
"    \ 'inactive': {
"    \	'left': [['inactive'], ['relativepath']],
"    \	'rigth': [['bifnum']]
"    \ },
"    \ 'component': {
"    \	'bufnum': '%n',
"    \	'inactive': 'inactive'
"    \ },
"    \ 'component_function': {
"    \	'kitestatus': 'kite#statusline'
"    \ },
"    \ 'colorscheme': 'gruvbox',
"    \ 'subseparator': {
"    \	'left': '',
"    \	'rigth': ''
"    \ },
"    \}

"Airline
"
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


"Kite
let g:kite_supported_lenguages = ['python', 'javascript']

"coc
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresg()
endif


"emmet
"let g:user_emmet_install_global = 0
"autocmd FileType html,css,php,hbs EmmetInstall

"Tabs navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
