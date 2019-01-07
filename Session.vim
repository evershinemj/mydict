let SessionLoad = 1
if &cp | set nocp | endif
nmap  3b
vmap  3b
nmap  3w
vmap  3w
map   W
noremap ,sed osed "s,^/,$baseurl/"
noremap ,url osed 's/img [^>]*src=\"\([^>]*?\)\"/\1'
noremap ,img oegrep -o '<img [^>]*src=[^>]*>'
noremap ,curl ocurl $url --silent
noremap ,sh i#!/bin/bash
vmap ,xc !boxes -f $BOXES_SYS_CONF -d pound-cmt -r
nmap ,xc !!boxes -f $BOXES_SYS_CONF -d pound-cmt -r
vmap ,mc !boxes -f $BOXES_SYS_CONF -d pound-cmt
nmap ,mc !!boxes -f $BOXES_SYS_CONF -d pound-cmt
noremap <silent> ,cc :cclose
noremap <silent> ,co :copen
noremap <silent> ,cl :clast
noremap <silent> ,cf :cfirst
noremap <silent> ,cp :cprevious
noremap <silent> ,cn :cnext
nnoremap ,C qc~)q
vmap ,gq :s/\s\+/ /ggvgq
nmap ,gq :%s/\s\+/ /ggq1G
map ,zsh :tabedit $ZSH
map ,br :tabedit ~/.bashrc
vmap ,rmo !boxes -f $BOXES_SYS_CONF -d mouse -r
vmap ,mo !boxes -f $BOXES_SYS_CONF -d mouse
nmap ,rmo !!boxes -f $BOXES_SYS_CONF -d mouse -r
nmap ,mo !!boxes -f $BOXES_SYS_CONF -d mouse
vmap ,rsu !boxes -f $BOXES_SYS_CONF -d sunset -r
vmap ,su !boxes -f $BOXES_SYS_CONF -d sunset
nmap ,rsu !!boxes -f $BOXES_SYS_CONF -d sunset -r
nmap ,su !!boxes -f $BOXES_SYS_CONF -d sunset
vmap ,rsp !boxes -f $BOXES_SYS_CONF -d spring -r
vmap ,sp !boxes -f $BOXES_SYS_CONF -d spring
nmap ,rsp !!boxes -f $BOXES_SYS_CONF -d spring -r
nmap ,sp !!boxes -f $BOXES_SYS_CONF -d spring
vmap ,ruc !boxes -f $BOXES_SYS_CONF -d unicornsay -r
vmap ,uc !boxes -f $BOXES_SYS_CONF -d unicornsay
nmap ,ruc !!boxes -f $BOXES_SYS_CONF -d unicornsay -r
nmap ,uc !!boxes -f $BOXES_SYS_CONF -d unicornsay
let s:cpo_save=&cpo
set cpo&vim
xmap S <Plug>VSurround
vmap [% [%m'gv``
nnoremap <silent> [B :bfirst
nnoremap <silent> [b :bprevious
noremap \z :tabedit ~/.zshrc
noremap \s :tabedit /usr/local/src/
noremap \r Bi${RED}Ea${NC}
noremap \p :pwd
noremap \n :nohlsearch
noremap \g Bi${GREEN}Ea${NC}
noremap \b :tabedit ~/.bash_profile
vmap ]% ]%m'gv``
nnoremap <silent> ]B :blast
nnoremap <silent> ]b :bnext
vmap _j :call Justify('tw',4)
nmap _j :%call Justify('tw',4)
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
omap <F7> a{
nnoremap <silent> <F10> :!ctags -R 
nnoremap <silent> <F9> =
nnoremap <silent> <F8> :TlistToggle
nnoremap <silent> <F7> 
nnoremap <silent> <F5> :tabedit ~/.vim/ftplugin/
nnoremap <silent> <F4> :tabedit ~/.vim/plugin/
nnoremap <silent> <F3> :tabedit ~/.vimrc
nnoremap <silent> <F2> Godate: :read !date
map <Down> gj
map <Up> gk
inoremap <silent>  <Left>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent>  <Right>
imap  <Plug>Isurround
inoremap #in #include<stdio.h>int main(){}ki	
inoremap ## ############################################################
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
inoremap ( ()i
cnoremap <expr> /v getcmdtype() == '/' ? '\v' : '/v'
cnoremap <expr> /c getcmdtype() == '/' ? '\c' : '/c'
cnoremap <expr> // getcmdtype() == '/' ? '\c' : '//'
inoremap </bo </body>
inoremap <bo <body></body>F>a
inoremap </ti </title>
inoremap <ti <title></title>F>a
inoremap </he </head>
inoremap <he <head></head>F>a
inoremap <ht <html></html>F>a
inoremap </ht </html>
inoremap [ []i
map! incs incsearch
abbr dev development
iabbr resp responsibility
iabbr mem memory
iabbr happi happiness
abbr teh the
iabbr #e  *************************************************/
iabbr #b /*************************************************
inoreabbr -- ---------------------------------------------------------
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set backspace=2
set cinwords=if,else,while,do,for,switch,until,def,class
set cmdheight=3
set complete=.,w,b,u,i
set completefunc=CompleteImport
set cpoptions=BceFs
set dictionary=/usr/share/dict/words
set errorbells
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldclose=all
set formatoptions=n2cqlro
set highlight=e:Search,M:Directory
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,-
set keymodel=startsel
set laststatus=2
set listchars=eol:$,tab:t~,trail:@,extends:>
set makeprg=javac
set matchpairs=(:),{:},[:],=:;
set modelines=3
set nrformats=bin,hex,alpha
set path=.,/usr/include,,,/usr/share/vim/vim80,~/vimlearning.d
set previewheight=5
set report=10000
set ruler
set runtimepath=~/.vim,~/.vim/pack/wangxueming/opt/completeimport,~/.vim/pack/wangxueming/start/complete,~/.vim/pack/tpope/start/surround,~/.vim/pack/tpope/start/commentary,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vim80/pack/dist/opt/matchit,/usr/share/vim/vim80/pack/dist/opt/justify,/usr/share/vim/vimfiles/after,~/.vim/after
set scrolloff=5
set selectmode=key
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set sidescroll=10
set sidescrolloff=10
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set statusline=%8.19f
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.class
set verbosefile=~/verbosefile
set visualbell
set nowarn
set wildmenu
set window=0
set winheight=2
set winminheight=2
set nowrapscan
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/Documents/javasrc/java/util/Iterator.java
badd +0 ~/mydict/javadoc
badd +64 ~/.bashrc
argglobal
silent! argdel *
$argadd .
set stal=2
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
enew
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> <nowait> <silent>  <Plug>NetrwRefresh
nmap <buffer> <nowait> <silent>  <Plug>NetrwLocalBrowseCheck
nmap <buffer> <nowait> <silent>  <Plug>NetrwServerEdit
nmap <buffer> <nowait> <silent> % <Plug>NetrwOpenFile
nmap <buffer> <nowait> <silent> - <Plug>NetrwBrowseUpDir 
nmap <buffer> <nowait> <silent> C <Plug>NetrwSetChgwin
nmap <buffer> <nowait> <silent> a <Plug>NetrwHide_a
nmap <buffer> <nowait> <silent> cd <Plug>NetrwLcd
nmap <buffer> <nowait> <silent> cB <Plug>NetrwBadd_cB
nmap <buffer> <nowait> <silent> cb <Plug>NetrwBadd_cb
nmap <buffer> <nowait> <silent> gb <Plug>NetrwBookHistHandler_gb
nnoremap <buffer> <F1> :he netrw-quickhelp
nmap <buffer> <nowait> <silent> <S-CR> <Plug>NetrwTreeSqueeze
nnoremap <buffer> <silent> <S-Up> :Pexplore
nnoremap <buffer> <silent> <S-Down> :Nexplore
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch,until,def,class
setlocal colorcolumn=
setlocal comments=
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,i
setlocal completefunc=CompleteMonths
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'netrw'
setlocal filetype=netrw
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=3
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=nql2ro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,.,~,-,*,/
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,hex,alpha
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'netrw'
setlocal syntax=netrw
endif
setlocal tabstop=33
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~/Documents
tabedit ~/Documents/javasrc/java/util/Iterator.java
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1
setlocal cinwords=if,else,while,do,for,switch,until,def,class
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//%s
setlocal complete=.,w,b,u,i,k~/mydict/spring,k~/mydict/springxml,k~/mydict/java
setlocal completefunc=CompleteImport
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=~/mydict/javadoc,~/mydict/java,~/mydict/junit,~/mydict/jar,~/mydict/coding-common
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'java'
setlocal filetype=java
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=3
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=n2cqlro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetJavaIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,0=extends,0=implements
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],=:;
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex,alpha
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=~/java,~/mydict,~/linecomplete
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.java
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'java'
setlocal syntax=java
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=./tags,tags,~/Documents/javasrc/tags,~/junit4/src/tags,~/Documents/spring-framework-master/tags
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 32 - ((13 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
lcd ~/Documents
tabedit ~/mydict/javadoc
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch,until,def,class
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,i
setlocal completefunc=CompleteImport
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=3
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=n2cqlro
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],=:;
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex,alpha
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/Documents
tabnext 3
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=2 winwidth=20 shortmess=filnxtToO
set winminheight=2 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
