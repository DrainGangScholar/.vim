" Set relative line numbers
set rnu

" Choose the yuyuko color scheme
colorscheme yuyuko

" Enable syntax highlighting
syntax on

" Enable filetype-specific plugins and indent settings
filetype plugin indent on

" Set space as the leader key
let mapleader = "\<Space>"

" Map leader key + / to :Ex (Explorer)
nnoremap <leader>/ :Ex<CR>

set clipboard=unnamedplus

call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=no
	nmap <buffer> gi <plug>(lsp-definition)
	nmap <buffer> gd <plug>(lsp-declaration)
	nmap <buffer> gr <plug>(lsp-references)
	nmap <buffer> <leader>d <plug>(lsp-document-diagnostics)
	nmap <buffer> <leader>r <plug>(lsp-rename)
	nmap <buffer> <leader>h <plug>(lsp-document-hover)
	nmap <buffer> <leader>f <plug>(lsp-document-format)
endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
