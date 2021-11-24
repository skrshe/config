runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
endif
runtime ./maps.vim

filetype plugin indent on
syntax enable

" vars
let g:zig_fmt_autosave = 0
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete', v:false)
call deoplete#custom#option('ignore_case', v:true)
"let g:languagetool_jar="/usr/share/java/languagetool/languagetool-commandline.jar"
let g:omnisharp_server_use_mono = 1
let g:omnisharp_highlighting = 3
let g:ale_linters = { 'cs': ['OmniSharp'] }
"let g:vimwiki_list = [{'path': '~/doc/nts', 'syntax': 'markdown', 'ext': '.md'}]
let g:wiki_root = '~/doc/nts'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'

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
set completeopt-=preview
set laststatus=0
set mouse=ar
set scrolloff=3 sidescrolloff=3
set shortmess=Ia
set statusline=%=%F\ %M%R%H%W%=
set ts=4 sw=4 sts=4 et ai si
set undodir=~/.local/nvim/undodir
set updatetime=50

" colorscheme settings
set background=dark
colorscheme witness

" highlightgroup ctermfg ctermbg cterm guifg guibg gui
"" cursorline masking
hi cursorline                ctermbg=none
hi cursorlinenr ctermfg=grey ctermbg=none
hi linenr       ctermfg=cyan
"" notfile
hi nontext      ctermfg=8
hi normal            ctermbg=none
hi endofbuffer  ctermfg=0
"" prompt menu
hi pmenu       ctermfg=black  ctermbg=grey  guifg=#586e75 guibg=#073642
hi pmenusel    ctermfg=grey   ctermbg=black guifg=#586e75 guibg=#073642
hi pmenusbar   ctermfg=black  ctermbg=grey  guifg=#586e75 guibg=#073642
hi pmenuthumb  ctermfg=black  ctermbg=grey  guifg=#586e75 guibg=#073642
"" special
hi matchparen ctermfg=lightblue ctermbg=none
hi visual ctermbg=magenta
hi colorcolumn ctermbg=black
"" splits
hi vertsplit    ctermfg=10       ctermbg=none cterm=none
hi statusline   ctermfg=darkcyan ctermbg=none cterm=none,underline
hi statuslinenc ctermfg=10       ctermbg=none cterm=none,underline
"" tabline
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
autocmd FileType c setlocal commentstring=//%s
autocmd FileType * :let b:commentary_format = &commentstring
autocmd FileType md,MD,markdown :set wrap linebreak

" vim:ft=vim
