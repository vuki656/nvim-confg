syntax on
filetype plugin on

set clipboard=unnamedplus                                   " Sync nvim clipboard with sys clipboard
set number                                                  " Show current line number
set relativenumber                                          " Show line number relative to line you are on
set incsearch                                               " Enables search results as you type
set smartindent                                             " Enable smart indenting
set spell spelllang=en_us                                   " Enable spell check and set language
set signcolumn=yes                                          " Auto show sign column (for git diff)
set updatetime=50                                           " Time after the buffer is saved
set termguicolors                                           " Set the given color scheme from init file
set nowrap                                                  " Don't wrap text if it goes out of view
set mouse=a                                                 " Enables mouse scrolling
set noswapfile                                              " Disable swap files
set cursorline                                              " Highlight line you are on
set scroll=15                                               " Set number of lines to scroll 
set tabstop=4                                               " Convert tab to 4 spaces
set shiftwidth=4                                            " Correctly indent lines inside blocks
set expandtab                                               " Convert tab to spaces

call plug#begin()

Plug 'tpope/vim-fugitive'                                       " Awesome git integration
Plug 'vim-airline/vim-airline'                                  " Enable airline (bottom bar with useful info)
Plug 'vim-airline/vim-airline-themes'                           " Enable airline themes 
Plug 'joshdick/onedark.vim'                                     " Onedark color scheme
Plug 'jiangmiao/auto-pairs'                                     " Automatically add closing bracket
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " Base fzf package
Plug 'junegunn/fzf.vim'                                         " Vim fzf adaptation
Plug 'airblade/vim-gitgutter'                                   " Show git diff in side column
Plug 'preservim/nerdtree'                                       " Sidebar tree view
Plug 'psliwka/vim-smoothie'                                     " Smooth scrolling
Plug 'Xuyuanp/nerdtree-git-plugin'                              " Display git diff is tree view
Plug 'ryanoasis/vim-devicons'                                   " Display more icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " Highlight files in tree view by color
Plug 'ThePrimeagen/vim-be-good'                                 " Practice game
Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " Intellisense 

Plug 'sheerun/vim-polyglot'
call plug#end()

let mapleader = " "                                                " Set leader key to space
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }   " Open FZF in a centered window
let g:NERDTreeGitStatusUseNerdFonts = 1                            " Enable nerd fonts in tree view
let g:NERDTreeShowHidden=1                                         " Show hidden files/dirs in tree view
let g:smoothie_update_interval=50                                  " Set scroll speed 

" Airline config
let g:airline_theme='onedark'                                      " Set color scheme 
let g:airline_powerline_fonts=1                                    " Enable fonts (emojis)
let g:airline#extensions#hunks#enabled=0                           " Remove number of diff lines in file 
let g:airline_section_a=airline#section#create(['mode'])           " Display only mode in section A
let g:airline_section_z='%{strftime(" %H:%M")}'                   " Display hour:minute in section Z
let g:airline_section_x=''                                         " Remove everything from section X
let g:airline_section_y=''                                         " Remove everything from section X
let g:airline#extensions#whitespace#checks=[]                      " Remove the trailing whitespace notification
let g:airline_skip_empty_sections=1                                " Don't display empty sections

colorscheme onedark

" Search git files with FZF
nnoremap <leader>p :GFiles<CR>

" Find current buffer in tree view
nnoremap <leader>o :NERDTreeFind<CR>

" Toggle tree view
nnoremap <leader>1 :NERDTreeToggle<CR>

" Move line up/down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Enter command mode
inoremap jj <ESC>

nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

