" @2015 Alex Davis (alex2006hw@gmail.com)
" General settings {{{
filetype plugin indent on
syntax on

set nocompatible
set nobackup
set nowritebackup
set noswapfile

set hidden
set autoread
set history=100
set backspace=indent,eol,start

set wildmenu
set wildmode=longest,full
set wildignore+=tmp,.bundle,.sass-cache,.git,.svn,.hg,doc,coverage

set scrolloff=3
set splitright

set t_vb=
set noerrorbells
set novisualbell
set t_Co=256
set ttyfast
set lazyredraw
set timeoutlen=500
" }}}

" Status line {{{
set laststatus=2
set showcmd
set ruler
set modelines=1
let g:airline_powerline_fonts=1
" }}}

" formatting {{{
set background=dark
set nowrap
set synmaxcol=200 " Do not highlight long lines
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set autoindent
set smartindent
set nojoinspaces
set number
set numberwidth=4
set fillchars=vert:│
set encoding=utf-8
set list
set listchars=tab:\·\ ,trail:·,eol:¬
" }}}

" vim-daylight colorschemes {{{
let g:daylight_late_hour = 22
let g:daylight_morning_hour = 6
let g:daylight_afternoon_hour = 12
let g:daylight_evening_hour = 18
"
let g:daylight_morning_color_gvim = "Tomorrow"
let g:daylight_afternoon_color_gvim = "solarized"
let g:daylight_evening_color_gvim = "Tomorrow-Night"
let g:daylight_late_color_gvim = "jellybeans"

let g:daylight_morning_color_term = "Tomorrow"
let g:daylight_afternoon_color_term = "mayansmoke"
let g:daylight_evening_color_term = "Tomorrow-Night"
let g:daylight_late_color_term = "jellybeans"
" }}}

" Rainbow Parentheses Improved {{{
let g:rainbow_active = 1
" }}}

" Limelight config {{{
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'Gray'
let g:limelight_conceal_ctermfg = '#D3D3D3'

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'darkgray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1
" }}}

" Searching {{{
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" }}}

" map f1 to toggle night/day colorscheme {{{
map ^[OP :colorscheme darkslategray
map ^[OQ :colorscheme zenburn^M
" }}}
" searching {{{
" Always search with very magic mode enabled
nnoremap / /\v
vnoremap / /\v

" Do not jump over 'real' lines, only over screen lines
nnoremap j gj
nnoremap k gk
" }}}

" key mappings {{{
nnoremap <space> za

" Simplify window navigation by removing the need for the W key
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Expand %% to the file path in command mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>

nnoremap <leader><leader> <c-^>
nnoremap <leader>h :set invhls<CR>
nnoremap <leader>w :set nowrap<CR>
nnoremap <leader>y "*y
vnoremap <leader>y "*ygv
nnoremap <leader>p :set paste<CR>"*]p<CR>:set nopaste<CR>
nnoremap <leader>P :set paste<CR>"*]P<CR>:set nopaste<CR>
nnoremap <leader>sc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
nnoremap <leader>sh :%s/\v:(\w+) \=\>/\1:/g<cr> " Replace Ruby 1.8 Hash syntax with 1.9 Hash syntax
nnoremap <leader>gr :topleft :split config/routes.rb<cr>
nnoremap <leader>gs :topleft :split db/schema.rb<cr>
nnoremap <leader>gg :topleft :split Gemfile<cr>
nnoremap <leader>gt :topleft :split TODO<cr> " Handy for keeping a TODO list in the project root
nnoremap <leader>i mmgg=G`m

" speedup ctrlp {{{
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .node_packages
      \ --ignore .svn
      \ --ignore .jspm
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
" }}}'

" }}}

" Plugins {{{

	" Neobundle {{{
	if has('vim_starting')
	    set nocompatible               " Be iMproved

	" Required:
	    set runtimepath+=~/.vim/bundle/neobundle.vim/
	endif

	" Required:
	call neobundle#begin(expand('~/.vim/bundle/'))

	" Let NeoBundle manage NeoBundle
	" Required:
	NeoBundleFetch 'Shougo/neobundle.vim'

	" My Bundles here:
	NeoBundle 'Shougo/neosnippet.vim'
    NeoBundle 'Shougo/neocomplcache.vim'
	NeoBundle 'Shougo/neosnippet-snippets'
	NeoBundle 'Shougo/neocomplete.vim'
	NeoBundle 'flazz/vim-colorschemes'
	NeoBundle 'marijnh/tern_for_vim'
    NeoBundle 'pangloss/vim-javascript'
    NeoBundle 'othree/html5.vim'
    NeoBundle 'mxw/vim-jsx'
	NeoBundle 'mhinz/vim-startify'
	NeoBundle 'mhinz/vim-janah'
	NeoBundle 'mhinz/vim-hugefile'
	NeoBundle 'junegunn/goyo.vim'
	NeoBundle 'whatyouhide/vim-lengthmatters'
	NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
	NeoBundle 'Townk/vim-autoclose'
	NeoBundle 'vim-scripts/closetag.vim'
	NeoBundle 'oblitum/rainbow'
	NeoBundle 'dan-f/vim-daylight'
	NeoBundle 'edsono/vim-matchit'
    NeoBundle 'benmills/vimux'
    NeoBundle 'jeetsukumaran/vim-buffergator'
    NeoBundle 'kien/ctrlp.vim'
    NeoBundle 'JazzCore/ctrlp-cmatcher'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'rking/ag.vim'

	call neobundle#end()

	" Required:
	filetype plugin indent on

	" If there are uninstalled bundles found on startup,
	" this will conveniently prompt you to install them.
	NeoBundleCheck
	" }}}

" neocomplcache {{{
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

    " Plugin key-mappings.
    inoremap <expr><C-g>     neocomplcache#undo_completion()
    inoremap <expr><C-l>     neocomplcache#complete_common_string()
    
    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
          return neocomplcache#smart_close_popup() . "\<CR>"
            " For no inserting <CR> key.
              "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
          endfunction
          " <TAB>: completion.
          inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
          " <C-h>, <BS>: close popup and delete backword char.
          inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
          inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
          inoremap <expr><C-y>  neocomplcache#close_popup()
          inoremap <expr><C-e>  neocomplcache#cancel_popup()
          " Close popup by <Space>.
          "inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
          
          " For cursor moving in insert mode(Not recommended)
          "inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
          "inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
          "inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
          "inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
          " Or set this.
          "let g:neocomplcache_enable_cursor_hold_i = 1
          " Or set this.
          "let g:neocomplcache_enable_insert_char_pre = 1
          
          " AutoComplPop like behavior.
          "let g:neocomplcache_enable_auto_select = 1
          
          " Shell like behavior(not recommended).
          "set completeopt+=longest
          "let g:neocomplcache_enable_auto_select = 1
          "let g:neocomplcache_disable_auto_complete = 1
          "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
          
          " Enable omni completion.
          autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
          autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
          autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
          autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
          autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
          
          " Enable heavy omni completion.
          if !exists('g:neocomplcache_force_omni_patterns')
                let g:neocomplcache_force_omni_patterns = {}
            endif
            let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
            let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(>\|->\)'
            let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(>\|->\)\|\h\w*::'
            
" }}}

" Skeletons {{{
" Load skeletons for commonly used languages
autocmd BufNewFile *.c          0r ~/.vim/skel/skel.c
autocmd BufNewFile *.h          0r ~/.vim/skel/skel.h
autocmd BufNewFile *.py          0r ~/.vim/skel/skel.py
autocmd BufNewFile *.sh        0r ~/.vim/skel/skel.sh
autocmd BufNewFile *.html       0r ~/.vim/skel/skel.html
"
" }}}

" Autocommands {{{

function! StripTrailingWhitespace()
  silent exe "normal ma<CR>"
  let saved_search = @/
  %s/\s\+$//e
  silent exe "normal `a<CR>"
  let @/ = saved_search
endfunction

if has('autocmd')

  augroup configroup

    " Remove all previously defined autocommands so re-loading this file doesn't
    " re-define everything.
    autocmd!
" }}}

	" General hooks {{{

	" Automatically strip trailing whitespace from most regular source code file
	" types using a custom function.
	autocmd BufWritePre,FileWritePre *.rake,*.html,*.haml,*.rb,*.php,*.xml,*.erb,*.yml,*.scss,*.css,*.js,*.coffee call StripTrailingWhitespace()

	" Resize all windows to optimum distribution whenever Vim itself (the
	" terminal window it lives in) is resized.
	autocmd VimResized * wincmd =

	" Disable paste mode when leaving insert mode.
	autocmd InsertLeave * set nopaste

	" When changing this file, always immediately reload it.
	autocmd BufWritePost .vimrc source $MYVIMRC
	" }}}

	" Javascript {{{

	" Run javascript files with Node either directly or in a split tmux pane
	" using Vimux.
	autocmd Filetype javascript nnoremap <buffer> <Leader>r :!node %<CR>
	autocmd Filetype javascript nnoremap <buffer> <Leader>vr :call VimuxRunCommand("clear; node " . bufname("%"))<CR>
	autocmd Filetype coffee nnoremap <buffer> <Leader>r :CoffeeRun<CR>

	" Treat JSON file as javascript
	autocmd BufNewFile,BufRead *.json setlocal filetype=javascript

	" Be smart about JSON formatting
	autocmd FileType json setlocal equalprg=python\ -m\ json.tool

	" }}}

	" Plain text, Markdown and markup {{{

	" For text and markup files do not show special characters and hard-wrap
	" text. Limit markdown and text files at 80 characters wide.
	autocmd FileType text,markdown,html,xhtml,eruby setlocal wrap linebreak nolist
	autocmd Filetype text,markdown setlocal textwidth=80

	" }}}

	    " Other languages {{{

	    autocmd Filetype elixir nnoremap <buffer> <Leader>r :!elixir %<cr>
	    autocmd Filetype elixir nnoremap <buffer> <Leader>k :!mix test %<cr>
	    autocmd Filetype python nnoremap <buffer> <Leader>r :!python %<cr>

	    " Add Railsy file extensions to the suffixes list to enable find and gf to
	    " jump to Sass stylesheets.
	    autocmd FileType scss setlocal suffixesadd+=.css.scss
	    autocmd BufNewFile,BufRead .tmux.conf*,tmux.conf* set filetype=tmux

	    " }}}

	  augroup END

	endif

" }}}

" Set indent depends on file types {{{
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
" }}}

" vim:foldmethod=marker:foldlevel=0
