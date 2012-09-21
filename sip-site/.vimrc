" TODO
" * close Tagbar/TaskList panel when is the only panel open (coupled with nerdtree) after closing the last buffer

" ### reference ###

"[BIXLY] http://blog.bixly.com/post/26033735049/setting-up-and-using-vim-for-python-django
"[FLUTHER] http://blog.fluther.com/django-vim/
"[STEVELOSH] http://stevelosh.com/blog/2011/06/django-advice/#editing-with-vim

" ### useful plugins ###
call vam#ActivateAddons(["ctags%610","snipMate","Tagbar","tlib","TaskList","Better_Javascript_Indentation", "L9", "AutoComplPop", "Syntastic"], {"force_loading_plugins_now": 1})

" * [Tagbar] https://github.com/majutsushi/tagbar
let g:tagbar_left = 1
map T :TagbarOpen<CR>

" * [TaskList] http://www.vim.org/scripts/script.php?script_id=2607
" add T shortcut to open TaskList
"map T :TaskList<CR>
"in .vim/bundle/TaskList/plugin/tasklist.vim:369 the shortcut has been
"remapped to <leader>l to avoid errors with Command-T, which is loaded
"anyway in .vimrc before the TaskList in local .vimrc

" * [AutoComplPop]
let g:acp_enableAtStartup = 1

" ### general options ###

" move among files using CTRL+left or CTRL+right
map <silent><C-Left> <C-T>
map <silent><C-Right> <C-]>

"add line numbers [BIXLY]
set number

"Now you can just press CTRL+space to omnicomplete!
inoremap <Nul> <C-x><C-o>

"Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

" #### python ####
"python-compatible tab setup [BIXLY]
set tabstop=8 expandtab shiftwidth=4 softtabstop=4  
set autoindent

"python-compatible folding [BIXLY]
set foldmethod=indent foldlevel=99

"set autocompletion with omnicomplete [FLUTHER]
autocmd FileType python set omnifunc=pythoncomplete#Complete

" #### html ####
"set autocompletion with omnicomplete [FLUTHER]
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" #### css ####
"set autocompletion with omnicomplete [FLUTHER]
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" #### javascript ####
"set autocompletion with omnicomplete [FLUTHER]
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set textwidth=79

"javascript folding [STEVELOSH]
au FileType javascript setlocal foldmethod=marker
au FileType javascript setlocal foldmarker={,}

" #### django ####
"what does this mean?
"DJANGO_SETTINGS_FILE=myapp.settings vim

"filetype mappings [STEVELOSH]
nnoremap _dt :set ft=htmldjango<CR>
nnoremap _pd :set ft=python.django<CR>

au BufNewFile,BufRead *.html setlocal filetype=htmldjango

au BufNewFile,BufRead admin.py     setlocal filetype=python.django
au BufNewFile,BufRead urls.py      setlocal filetype=python.django
au BufNewFile,BufRead models.py    setlocal filetype=python.django
au BufNewFile,BufRead views.py     setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal filetype=python.django
au BufNewFile,BufRead forms.py     setlocal filetype=python.django
