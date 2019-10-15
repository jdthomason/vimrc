" VIMRC file.  This will probably go far beyond my limits of sanity soon
" enough

" Plugin loader
call plug#begin('~/.vim/plugged')
    " NERDTree
    Plug 'scrooloose/nerdtree'    

    " Airline plugin
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Color theme(s)
    Plug 'Rigellute/rigel'
    Plug 'flazz/vim-colorschemes'
    Plug 'wdhg/dragon-energy'

    " Syntax checker
    Plug 'scrooloose/syntastic'

call plug#end()

" Set some stuf for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:systastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map={'mode': 'passive'}

" Set key binding for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Disable auto comments
autocmd  FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable 24-bit colors
set termguicolors

" Set color scheme
syntax enable 
colo dragon-energy
hi Normal guibg=NONE ctermbg=NONE
hi MatchParen cterm=bold ctermbg=NONE guibg=NONE guifg=red

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

" Disable bell sounds and visuals
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
