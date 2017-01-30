" HOTKEYS
"""""""""""""""""""""""""""""""""""
" F12 Toggles Mouse between terminal and vim mode
" F9 Saves as root
" F5 Beautifies JSON
"""""""""""""""""""""""""""""""""""

version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=2
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set modelines=0
set ruler
set incsearch
syntax on
"set hlsearch!
" set cindent
set window=0
" vim: set ft=vim :

" Show Line Numbers
set number

" Backspace over line ends
set bs=2

" Do not wrap anything
set wrap

" Indentation
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent
set smartindent
set shiftround

" Mouse is for Vim
set mouse=a

" filetype detection
filetype off
filetype plugin indent on

" FILETYPE SPECIFIC
"""""""""""""""""""""""""""""""""""
" treat metatrader as c
au BufNewFile,BufRead *.mq4 set filetype=c
" 2 space tabs for ruby
au BufNewFile,BufRead *.rb set shiftwidth=2
" json format syntax hilighting
au BufEnter,BufNewFile,BufRead *.json set filetype=json
au BufEnter,BufNewFile,BufRead *.json call JsonSyntax()
"""""""""""""""""""""""""""""""""""

" HOTKEYS
"""""""""""""""""""""""""""""""""""
" F12 Toggles Mouse between terminal and vim mode
if !hasmapto('<SID>ToggleMouse()')
    noremap <F12> :call <SID>ToggleMouse()<CR>
    inoremap <F12> <Esc>:call <SID>ToggleMouse()<CR>a
endif

" F9 Saves as root
if !hasmapto('<SID>SudoSave()')
    noremap <F9> :call <SID>SudoSave()<CR>
    inoremap <F9> <Esc>:call <SID>SudoSave()<CR>a
endif

" F5 Beautifies JSON
if !hasmapto('JsonBeautify()')
    noremap <F5> :call JsonBeautify()<CR>
    inoremap <F5> <Esc>:call JsonBeautify()<CR>a
endif

" F10 ToggleFileRegister
"if !hasmapto('ToggleFileRegister()')
"    noremap <F10> :call ToggleFileRegister()<CR>
"    inoremap <F10> <Esc>:call ToggleFileRegister()<CR>a
"endif
"""""""""""""""""""""""""""""""""""

" Disable comment guessing
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Color Scheme
hi clear
syntax reset
syntax on
filetype on


if has('gui_running')
    hi Normal       guifg=LightGray   guibg=Black
    hi NonText      guifg=#505050    guibg=Black
    hi Comment      guifg=#505050    guibg=Black gui=bold 
    hi Constant     guifg=DarkCyan    guibg=Black
    hi Identifier   guifg=Cyan        guibg=Black
    hi Statement    guifg=#5588cc     guibg=Black
    hi PreProc      guifg=LightGray   guibg=Black gui=bold 
    hi Type         guifg=DarkGreen   guibg=Black
   hi Special      guifg=#5588cc     guibg=Black
    hi Underlined   guifg=LightGray   guibg=Black gui=underline
    hi Error        guifg=Red         guibg=Black gui=bold
    hi Folded       guifg=DarkGreen   guibg=Black gui=underline 
    hi Scrollbar    guifg=#5588cc     guibg=Black
    hi Cursor       guifg=Black       guibg=White
    hi ErrorMsg     guifg=Red         guibg=Black gui=bold 
    hi WarningMsg   guifg=Yellow      guibg=Black
    hi VertSplit    guifg=White       guibg=Black
    hi Directory    guifg=Cyan        guibg=DarkBlue
    hi Visual       guifg=Black       guibg=Cyan gui=underline 
    hi Title        guifg=White       guibg=DarkBlue
    hi Search       guifg=Black       guibg=Cyan
    hi MatchParen   guifg=Black       guibg=Cyan
    hi StatusLine   guifg=White       guibg=Black gui=bold,underline
    hi StatusLineNC guifg=Gray        guibg=Black gui=bold,underline 
    hi LineNr       guifg=White       guibg=#505050 gui=bold 
    hi Normal       guifg=LightGray   guibg=Black
    hi NonText      guifg=#505050    guibg=Black
else
    hi Normal       ctermfg=LightGray ctermbg=Black
    hi NonText      ctermfg=DarkGray  ctermbg=Black
    hi Comment      ctermfg=DarkGray  ctermbg=Black cterm=bold 
    hi Constant     ctermfg=DarkCyan  ctermbg=Black
    hi Identifier   ctermfg=Cyan      ctermbg=Black
    hi Statement    ctermfg=Blue      ctermbg=Black
    hi PreProc      ctermfg=LightGray ctermbg=Black cterm=bold 
    hi Type         ctermfg=DarkGreen ctermbg=Black
    hi Special      ctermfg=Blue      ctermbg=Black
    hi Underlined   ctermfg=LightGray ctermbg=Black cterm=underline
    hi Error        ctermfg=Red       ctermbg=Black cterm=bold
    hi Folded       ctermfg=DarkGreen ctermbg=Black cterm=underline term=none
    hi Scrollbar    ctermfg=Blue      ctermbg=Black
    hi Cursor       ctermfg=Black     ctermbg=White
    hi ErrorMsg     ctermfg=Red       ctermbg=Black cterm=bold term=bold
    hi WarningMsg   ctermfg=Yellow    ctermbg=Black
    hi VertSplit    ctermfg=White     ctermbg=Black
    hi Directory    ctermfg=Cyan      ctermbg=DarkBlue
    hi Visual       ctermfg=Black     ctermbg=Cyan cterm=underline term=none
    hi Title        ctermfg=White     ctermbg=DarkBlue
    hi Search       ctermfg=Black     ctermbg=Cyan
    hi MatchParen   ctermfg=Black     ctermbg=Cyan
    hi StatusLine   ctermfg=White     ctermbg=Black term=bold cterm=bold,underline 
    hi StatusLineNC ctermfg=Gray      ctermbg=Black term=bold cterm=bold,underline
    hi LineNr       ctermfg=White     ctermbg=DarkGray term=bold cterm=bold
endif

" Protect large files from sourcing and other overhead.
" Files become read only
" if !exists("my_auto_commands_loaded")
"     let my_auto_commands_loaded = 1
" Large files are > 10M
" Set options:
" eventignore+=FileType (no syntax highlighting etc
" assumes FileType always on)
" noswapfile (save copy of file)
" bufhidden=unload (save memory when other file is viewed)
" buftype=nowritefile (is read-only)
" undolevels=-1 (no undo possible)
"     let g:LargeFile = 1024 * 1024 * 10
"     augroup LargeFile
"         autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
"         augroup END
" endif

" Beautify Json, prompting incase of fat finger
" passing 1 as an argument skips the prompt
fun! JsonBeautify(...)
    if a:0 != 1
        let curline = getline('.')
        call inputsave()
        let response = input('Beautify as JSON, Are you Sure? (N/y): ')
        echo ""
    endif
    if a:0==1 || response == "y" || response == 'Y'
        :call JsonSyntax()
        let tmpmem = &l:maxmempattern
        set maxmempattern=2000000
        :silent %s/\({\)\(\%([^"]\|"[^"]*"\)*$\)\@=/{\r/g
        :silent %s/\(\[\)\(\%([^"]\|"[^"]*"\)*$\)\@=/[\r/g
        :silent %s/\(}\)\(\%([^"]\|"[^"]*"\)*$\)\@=/\r}/g
        :silent %s/\(\]\)\(\%([^"]\|"[^"]*"\)*$\)\@=/\r]/g
        :silent %s/\(,\)\(\%([^"]\|"[^"]*"\)*$\)\@=/,\r/g
        :call JsonIndent()
        :let &maxmempattern=tmpmem
    endif
endfunction

fun! JsonSyntax()
    syntax clear
    let main_syntax = 'javascript'
    " Syntax: Strings {{{2
    syn region  jsonString    start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=jsonEscape
    " Syntax: JSON does not allow strings with single quotes, unlike JavaScript.
    syn region  jsonStringSQ  start=+'+  skip=+\\\\\|\\"+  end=+'+
    " Syntax: Escape sequences {{{3
    syn match   jsonEscape    "\\["\\/bfnrt]" contained
    syn match   jsonEscape    "\\u\x\{4}" contained
    " Syntax: Strings should always be enclosed with quotes.
    syn match   jsonNoQuotes  "\<\a\+\>"
    " Syntax: Numbers {{{2
    syn match   jsonNumber    "-\=\<\%(0\|[1-9]\d*\)\%(\.\d\+\)\=\%([eE][-+]\=\d\+\)\=\>"
    " Syntax: An integer part of 0 followed by other digits is not allowed.
    syn match   jsonNumError  "-\=\<0\d\.\d*\>"
    " Syntax: Boolean {{{2
    syn keyword jsonBoolean   true false
    " Syntax: Null {{{2
    syn keyword jsonNull      null
    " Syntax: Braces {{{2
    syn match   jsonBraces     "[{}\[\]]"
    command -nargs=+ HiLink hi def link <args>
    HiLink jsonString             String
    HiLink jsonEscape             Special
    HiLink jsonNumber     Number
    HiLink jsonBraces       Operator
    HiLink jsonNull       Function
    HiLink jsonBoolean      Boolean
    HiLink jsonNumError           Error
    HiLink jsonStringSQ           Error
    HiLink jsonNoQuotes           Error
    delcommand HiLink
    let b:current_syntax = "javascript"
    unlet main_syntax
endfunction

fun! JsonIndent()
    let lines = line('$')
    let counter = 1
    let depth = 0
    let TAB = '    '
    while counter <= lines
        if getline(counter) =~ '\(}\)\(\%([^"]\|"[^"]*"\)*$\)\@=' || getline(counter) =~ '\(]\)\(\%([^"]\|"[^"]*"\)*$\)\@='
            let depth = depth - 1
        endif
        let dcnt = depth
        let buf = ''
        while dcnt > 0
            let buf = buf . TAB
            let dcnt = dcnt - 1
        endwhile
        :exe counter.'s/^/'.buf.'/g'
        if getline(counter) =~ '\({\)\(\%([^"]\|"[^"]*"\)*$\)\@=' || getline(counter) =~ '\(\[\)\(\%([^"]\|"[^"]*"\)*$\)\@='
            let depth = depth + 1
        endif
        let counter = counter + 1
    endwhile
endfunction


" Function to toggle mouse from Vim to Terminal
fun! s:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif
    if &mouse == ""
        let &mouse = s:old_mouse
        set number
        set nopaste
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        set number!
        set paste
        echo "Mouse is for Terminal"
    endif
endfunction

" Function to save as root if you don't have permissions
fun! s:SudoSave()
    let curline = getline('.')
    call inputsave()
    let response = input('Saving as Root, Are you Sure? (N/y): ')
    echo ""
    if response == "y" || response == 'Y'
        :silent w !sudo tee % >/dev/null
        :edit!
    endif
endfunction

" let g:file_register=0
" function ToggleFileRegister()
"     if g:file_register == 0
"         echo "Enabled File Register"
"         let g:session_yank_file="~/.vim_yank"
"         vnoremap <silent> y :call Yoink("'<,'>y")<CR>
"         vnoremap <silent> d :call Yoink("'<,'>d")<CR>
"         nnoremap <silent> dd :call Yoink("normal! dd")<CR>
"         nnoremap <silent> yy :call Yoink("normal! yy")<CR>
"         nnoremap <silent> YY :call Yoink("normal! YY")<CR>
"         nnoremap <silent> p :call Plop("p")<CR>
"         nnoremap <silent> P :call Plop("P")<CR>
"         let g:file_register=1
"     else
"         echo "Disabled File Register"
"         vunmap y
"         vunmap d
"         nunmap dd
"         nunmap yy
"         nunmap YY
"         nunmap p
"         nunmap P
"         let g:file_register=0
"     endif
" endfunction
" 
" function Yoink(...) range
"     echo a:000
"     return
"     exec a:command
"     new
"     silent call setline(1,getregtype())
"     silent put
"     silent exec 'wq! ' . g:session_yank_file
"     exec 'bdelete ' . g:session_yank_file
" endfunction
" 
" function Plop(command)
"     silent exec 'sview ' . g:session_yank_file
"     let l:opt=getline(1)
"     silent 2,$yank
"     if (l:opt == 'v')
"         call setreg('"', strpart(@",0,strlen(@")-1), l:opt)
"     else
"         call setreg('"', @", l:opt)
"     endif
"     exec 'bdelete ' . g:session_yank_file
"     exec 'normal! ' . a:command
" endfunction
" 
" silent call ToggleFileRegister()
