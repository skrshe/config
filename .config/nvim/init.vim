call plug#begin('~/.config/nvim/plugged')
" file scheme and bindings
Plug 'terminalnode/sway-vim-syntax'
Plug 'mboughaba/i3config.vim'
Plug 'ziglang/zig.vim'
Plug 'terminalnode/sway-vim-syntax'
Plug 'omnisharp/omnisharp-vim'
"Plug 'plasticboy/vim-markdown' " breaks so easily
" tools
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'raimondi/delimitmate'
" functionality
Plug 'adelarsq/vim-matchit'
" Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" frameworks
Plug 'mattn/emmet-vim'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"Plug 'jreybert/vimagit'
" colors
Plug 'altercation/vim-colors-solarized'
call plug#end()

syntax enable

let mapleader = " "
" zig
let g:zig_fmt_autosave = 0
" netrw
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
" misc
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete', v:false)
let g:omnisharp_server_use_mono = 1
let g:ale_linters = { 'cs': ['OmniSharp'] }


set hidden
set nobackup
set noswapfile
set noerrorbells
set nohlsearch
set noruler
set noshowmode
set nowrap
set splitbelow splitright
set backspace=indent,eol,start
set colorcolumn=80
" set completeopt=noinsert,noselect
set laststatus=1
set mouse=nicr
set scrolloff=3
set shortmess=a
set statusline=%=%F\ %M%R%H%W%=
set ts=4 sw=4 sts=4 et ai si
set undodir=~/.local/nvim/undodir
set updatetime=50


" insert
inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}
" normal
nnoremap <leader>ghw :h <c-R>=expand("<cword>")<cr><cr>
nnoremap <leader>bs /<c-R>=escape(expand("<cWORD>"), "/")<cr><cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>
nnoremap <Leader>pf :Files<cr>
nnoremap <Leader><cr> :so ~/.config/nvim/init.vim<cr>
nnoremap <Leader><esc> :e ~/.config/nvim/init.vim<cr>
nnoremap <Leader>+ :vertical resize +5<cr>
nnoremap <Leader>- :vertical resize -5<cr>
nnoremap <Leader>> :resize +5<cr>
nnoremap <Leader>< :resize -5<cr>
nnoremap <Leader>. :split<cr>
nnoremap <Leader>, :vsplit<cr>
nnoremap <Leader>\= <ctrl-w>\=
nnoremap <Leader>rp :resize 100<cr>
nnoremap <Leader>q :quit<cr>
" move stuff
vmap > >gv
vmap < <gv
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
" misc
inoremap <c-c> <esc>
nnoremap <c-s> :w %<cr>
inoremap <c-s> <c-o>:w %<cr>
nnoremap Q <nop>
noremap  U :redo<cr>
inoremap jj <esc>
vnoremap S y:%s/<c-r>"//gI<left><left><left>
nnoremap S :%s//gI<left><left><left>
" alias
com! W w

set background=dark
colorscheme solarized
"" highlightgroup ctermfg ctermbg cterm guifg guibg gui
" cursorline masking
hi cursorline                ctermbg=none
hi cursorlinenr ctermfg=grey ctermbg=none
hi linenr       ctermfg=cyan
" notfile
hi nontext ctermfg=8
hi normal            ctermbg=none
hi endofbuffer ctermfg=8
" prompt menu
hi pmenu       ctermfg=black  ctermbg=grey  guifg=#586e75 guibg=#073642
hi pmenusel    ctermfg=grey   ctermbg=black guifg=#586e75 guibg=#073642
hi pmenusbar   ctermfg=black  ctermbg=grey  guifg=#586e75 guibg=#073642
hi pmenuthumb  ctermfg=black  ctermbg=grey  guifg=#586e75 guibg=#073642
" special
hi matchparen ctermfg=lightblue ctermbg=none
" splits
hi vertsplit    ctermfg=10       ctermbg=none cterm=none
hi statusline   ctermfg=darkcyan ctermbg=none cterm=none,underline
hi statuslinenc ctermfg=10       ctermbg=none cterm=none,underline
" tabline
hi tabline     ctermfg=10       ctermbg=none cterm=none
hi tablinesel  ctermfg=darkcyan ctermbg=none cterm=none
hi tablinefill ctermfg=black    ctermbg=none cterm=none

function! s:empty_message(timer)
  if mode() ==# 'n'
    echon ''
  endif
endfunction

augroup cmd_msg_cls
    autocmd!
    autocmd CursorHold * call timer_start(2500, funcref('s:empty_message'))
augroup END
autocmd BufWritePre * :%s/\s\+$//e
" vim:ft=vim
