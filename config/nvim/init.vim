set list!
set listchars=tab:▹\ ,trail:·,extends:\#,nbsp:.
set autoindent
set smartindent
set number relativenumber
set expandtab
set tabstop=4
set shiftwidth=4

set clipboard=unnamedplus

" Hide search highlighting on enter
nnoremap <CR> :noh<CR><CR>

" Set path to python (default behavior messed up by conda envs) (might be
" better to create new conda env in install script and point to it)
let g:loaded_python_provider = 0
let g:python_host_prog = ''
let g:python3_host_prog  = '/usr/bin/python3'

" Enable default autocomplete
filetype plugin indent on

" Persistent undo
set undodir=~/.local/share/nvim
set undofile

set mouse=a

syntax on

" Default to tree mode
let g:netrw_liststyle = 3
let g:netrw_preview = 1
let g:netrw_banner=0

call plug#begin()

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'
let g:vimtex_view_forward_search_on_start=0
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : 'out',
    \}

Plug 'davidhalter/jedi-vim'
let g:jedi#popup_on_dot=0

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()

" So that jedi-vim can search in right conda environment
let $VIRTUAL_ENV = $CONDA_PREFIX

" Save and toggle Explore with <C-E>
function! ToggleExplore()
    if &ft ==# "netrw"
        silent bd
    else
        silent write
        silent Explore
    endif

endfunction
map <silent> <C-E> :call ToggleExplore()<CR>

