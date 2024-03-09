
"Personal vimrc file for Gwalisam"

" ===========================
" Vim UI Configs 
" =========================

"Set leader"
let mapleader = " "


"Visual autocomplete for command menu"
set wildmenu


"Switch from default Vi-compatibilty mode and enables useful functionality"
set nocompatible 

"Turns on synthax highlighting for buffer"
syntax on

"Sets the default colorscheme"
colorscheme habamax

"highlight line cursor is on"
set cursorline

"Show matching []{}()"
set showmatch

"Show line numbers"
set number

"This will enable relative numbering mode.It'll show the correct current line"
"number and other line numbers(above and below) are numbered relative to the current line"
set relativenumber

"Disable default vim startup message"
set shortmess+=I

"Always show status line at bottom"
set laststatus=2

"Makes searching case insensitive when all characters in search string are lower"
"casebut  case sensitive when it contains an uppercase character"
set ignorecase
set smartcase

"Search happens as you type and not when you press enter"
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

"Disable the annoying audible bell"
set noerrorbells visualbell t_vb=

"Displays files"
nnoremap <C-p> :files <CR>

"Kepp cursor in middle of screen(approximately) when scrolling
set scrolloff=12




" ===========================
" Plugin Mappings
" =========================
"Ivoke fuzzy finding plugin in both file and buffer mode"
nmap <Leader>s :CtrlPMixed<CR>
nmap <Leader>e :NERDTreeToggle<CR>
 


" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Show lines of files"
let g:NERDTreeFileLines = 1

" ===========================
" Leader Mappings 
" =========================
"Quick save , Quick quit and Quick save and quit"
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nmap <leader>wq :wq<CR>


"Doing horizontal and vertical splits"
nmap <Leader>\  :vs<CR>
nmap <Leader>- :sp<CR>



"  y d p P   --  Quick copy paste into system clipboard"
nmap <Leader>y "+y
nmap <Leader>d "+d
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P



"This will enable mouse support, can be convinient (disabled)"
"set mouse+=a"
" ===========================
" Loose Bad habbits 
" =========================

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>





