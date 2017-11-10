set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" ############  MY PLUGINS   ##############

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'arcticicestudio/nord-vim'

" For Snipmate
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'

Plugin 'NLKNguyen/papercolor-theme'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'mhartington/oceanic-next'

" ########### PLUGINS END  ##############


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup


" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256



" ##### CONFIGS ##########
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

filetype plugin on
syntax on

" Line numbers config
set number
set relativenumber
hi LineNr       term=bold cterm=bold ctermfg=3 guifg=Grey guibg=Grey90

" For syntastic

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


function Py2()
    let g:syntastic_python_python_exec = '/usr/local/bin/python2.7'
endfunction

function Py3()
    let g:syntastic_python_python_exec = '/usr/local/bin/python3.6'
endfunction

call Py2()   " default to Py3 because I try to use it when possible



" ############# papercolor-theme ##############
set t_Co=256
set background=dark
colorscheme PaperColor
let g:airline_theme='papercolor'



"colorscheme OceanicNext
"let g:airline_theme='oceanicnext'
"syntax on
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

"colorscheme nord

" Theme
 "syntax enable
" for vim 7
 "set t_Co=256

" for vim 8
"if (has("termguicolors"))
  "set termguicolors
"endif


" #############################################


" For indent line
let g:indentLine_char = '┆'
let g:indentLine_color_term = 239


" For NERDTree window size
let g:NERDTreeWinSize=40

" Remap for quick buffer switching
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

" Set paste mode toggle 
set pastetoggle=<F2>



" ############## macros ##############
nmap OO O<Esc>j
nmap oo o<Esc>k
" Map Space -> space insert  without leaving normal mode
nnoremap <Space> i <Esc> 

" Map CTRL+S to write
nnoremap <C-s> :w<CR>

" Remap leader
let mapleader=","

