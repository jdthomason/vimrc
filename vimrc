" VIMRC file.  This will probably go far beyond my limits of sanity soon
" enough

" Plugin loader
call plug#begin('~/.vim/plugged')

    " Airline plugin
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Color theme(s)
    Plug 'Rigellute/rigel'

call plug#end()

" Disable auto comments
autocmd  FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable 24-bit colors
set termguicolors

" Set color scheme
syntax enable 
colo rigel 

" Be sure that we are wrapping text
set wrap

" This setting toggles on hybrid line numbering
set number relativenumber

" This should hopefully set everything to use 4 spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

" This setting toggles hyrid line numbering on or off depending on whether
" we are currently in the buffer or are currently writing text
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

