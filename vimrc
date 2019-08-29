" VIMRC file.  This will probably go far beyond my limits of sanity soon
" enough

" Be sure that we are wrapping text
set wrap

" Highlight text that extends beyond the 80th column
match ErrorMsg '\%>80v.\+'

" This setting toggles on hybrid line numbering
set number relativenumber

" This setting toggles hyrid line numbering on or off depending on whether
" we are currently in the buffer or are currently writing text
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

