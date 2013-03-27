" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" activate breakindent
set bri

" loads LaTeX-Suite_aka_Vim-LaTeX plugin
call vam#ActivateAddons(["LaTeX-Suite_aka_Vim-LaTeX"], {"force_loading_plugins_now": 1})

" custom macros, see http://vim-latex.sourceforge.net/documentation/latex-suite.html#Tex_Com_name

    " commands

        let g:Tex_Com_includegraphics = "\\includegraphics[width=\\<+text|line|page|width+>]{<+file+>}"

    " environments

        " figure + includegraphics
        let g:Tex_Env_figure = "\\begin{figure}\<CR>\\centering\<CR>\\caption[<+list+>]{<+caption+>}\<CR>includegraphics<++>\<CR>\\label{fig:<++>}\<CR>\\end{figure}"

        " table + tabular + nice scientific rules
        let g:Tex_Env_table = "\\begin{table}\<CR>\\centering\<CR>\\begin{tabular}{*{<+n.cols+>}{m{<+col.width+>\\<+text|line|page|width+>}}}\<CR>\\toprule\<CR><++> & <++>\\\\\<CR>\\cmidrule{<+from+>-<+to+>}\<CR><++> & <++>\\\\\<CR>\\otoprule\<CR><++> & <++>\\\\\<CR>\\bottomrule\<CR>\\end{tabular}\<CR>\\caption[<+list+>]{<+caption+>}\<CR>\\label{fig:<++>}\<CR>\\end{table}"

        " subfigure
        let g:Tex_Env_subfloat = "\\begin{figure}\<CR>\\centering\<CR>\\subfloat[<+caption+>]{\\label{fig:<++>}\\includegraphics[width=\\<+text|line|page|width+>]{<+file+>}}\\hfill\<CR>\\subfloat[<+caption+>]{\\label{fig:<++>}\\includegraphics[width=\\<+text|line|page|width+>]{<+file+>}}\\hfill\<CR>\\end{figure}"

    " prompts

        " environments
        let g:Tex_PromptedEnvironments = 'eqnarray*,eqnarray,equation,equation*,\[,$$,align,align*,figure,table,subfloat'
