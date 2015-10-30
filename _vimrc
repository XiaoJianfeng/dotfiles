set fileencodings=utf-8,gb18030,utf-16,big5

set nocompatible
set nobackup
set noswapfile

if has('gui')
	colorscheme darkblue
endif

" for pathogen to work
execute pathogen#infect()

set background=dark
syntax on
set nu
set ruler
"set nowrap
set incsearch
set hlsearch
"set background=dark
set smartindent
set cindent

set guifont=Consolas:h16

" since I use zsh as default shell, this will ensure the maximium compatibility
set shell=bash\ -i

filetype plugin indent on 

autocmd FileType python setlocal expandtab shiftwidth=4
autocmd FileType pyrex setlocal expandtab shiftwidth=4
autocmd FileType C setlocal shiftwidth=4
autocmd FileType R setlocal wrap

map <F5> :set list!<CR>
map <F7> :set wrap!<CR>
"map <F8> "*
map <F9> :update<CR>:!% <CR> " run current file
map <F10> :set hls!<CR>:echo "Highlights Cleared"<CR> " clear highlights
imap <F6> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" for syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']

" mode: active or passive
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["python", "shell"],
    \ "passive_filetypes": ["html"] }
map <F6> :SyntasticCheck<CR>
map <F8> :lclose<CR>
