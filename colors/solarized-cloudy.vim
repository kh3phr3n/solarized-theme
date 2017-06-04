" File: solarized-cloudy.vim
" Source: https://github.com/kh3phr3n/solarized-theme

" Initialization
" --------------

hi clear
set background=light
let g:colors_name='solarized-cloudy'

if exists('syntax_on')
    syntax reset
endif

if !has('gui_running') && &t_Co != 256
    finish
endif

" Color Palette
" -------------

let s:colors = {}

let s:colors.red        = ['DC322F', 166]
let s:colors.aqua       = ['2AA198',  36]
let s:colors.blue       = ['268BD2',  32]
let s:colors.green      = ['859900', 100]
let s:colors.orange     = ['CB4B16', 166]
let s:colors.yellow     = ['B58900', 136]
let s:colors.purple     = ['6C71C4',  62]
let s:colors.magenta    = ['D33682', 168]

let s:colors.line       = ['D9D9D9', 253] " base2
let s:colors.linenr     = ['B6BDBD', 250] " base1.5
let s:colors.nontext    = ['C4C8C8', 251] " base1.75
let s:colors.comment    = ['93A1A1', 247] " base1
let s:colors.emphasis   = ['586E75', 242] " base01
let s:colors.selection  = ['D9D9D9', 253] " base2
let s:colors.background = ['E9E9E9', 254] " base3
let s:colors.foreground = ['657B83',  66] " base00

" Highlighting Function
" ---------------------

function! s:Hl(group, fg, bg, attr)
    if a:fg != ''
        exec 'highlight ' . a:group . ' guifg=#' . s:colors[a:fg][0] . ' ctermfg=' . s:colors[a:fg][1]
    endif
    if a:bg != ''
        exec 'highlight ' . a:group . ' guibg=#' . s:colors[a:bg][0] . ' ctermbg=' . s:colors[a:bg][1]
    endif
    if a:attr != ''
        exec 'highlight ' . a:group . ' gui=' . a:attr . ' cterm=' . a:attr
    endif
endfunction

" Generic Syntax Highlighting: (see :help group-name)
" ---------------------------------------------------

" Type: StorageClass, Typedef
" PreProc: Include, Define, Macro, PreCondit
" Constant: Character, Number, Boolean, Float
" Statement: Conditional, Repeat, Label, Keyword, Exception
" Special: SpecialChar, Tag, Delimiter, SpecialComment, Debug

call s:Hl('Comment'   , 'comment'   , 'background', 'none')
call s:Hl('Constant'  , 'magenta'   , 'background', 'none')
call s:Hl('String'    , 'aqua'      , 'background', 'none')
call s:Hl('Identifier', 'purple'    , 'background', 'none')
call s:Hl('Function'  , 'blue'      , 'background', 'none')
call s:Hl('Statement' , 'green'     , 'background', 'none')
call s:Hl('Operator'  , 'green'     , 'background', 'none')
call s:Hl('PreProc'   , 'orange'    , 'background', 'none')
call s:Hl('Type'      , 'yellow'    , 'background', 'none')
call s:Hl('Structure' , 'yellow'    , 'background', 'none')
call s:Hl('Special'   , 'red'       , 'background', 'none')
call s:Hl('Underlined', 'purple'    , 'background', 'none')
call s:Hl('Ignore'    , 'foreground', 'background', 'none')
call s:Hl('Error'     , 'red'       , 'background', 'none')
call s:Hl('Todo'      , 'magenta'   , 'background', 'none')

" Vim Highlighting: (see :help highlight-groups)
" ----------------------------------------------

" Optionals: Conceal, CursorIM, VisualNOS

call s:Hl('Title'       , 'aqua'      , ''          , 'none')
call s:Hl('ColorColumn' , 'foreground', 'line'      , 'none')
call s:Hl('Cursor'      , 'background', 'comment'   , 'none')
call s:Hl('CursorColumn', 'foreground', 'line'      , 'none')
call s:Hl('CursorLine'  , 'purple'    , 'background', 'none')
call s:Hl('Directory'   , 'blue'      , 'background', 'none')
call s:Hl('DiffAdd'     , 'green'     , 'selection' , 'none')
call s:Hl('DiffChange'  , 'yellow'    , 'selection' , 'none')
call s:Hl('DiffDelete'  , 'red'       , 'selection' , 'none')
call s:Hl('DiffText'    , 'blue'      , 'selection' , 'none')
call s:Hl('ErrorMsg'    , 'red'       , 'background', 'none')
call s:Hl('VertSplit'   , 'line'      , 'background', 'none')
call s:Hl('Folded'      , 'comment'   , 'background', 'none')
call s:Hl('FoldColumn'  , 'comment'   , 'background', 'none')
call s:Hl('SignColumn'  , 'comment'   , 'background', 'none')
call s:Hl('IncSearch'   , 'background', 'orange'    , 'none')
call s:Hl('LineNr'      , 'linenr'    , 'background', 'none')
call s:Hl('CursorLineNr', 'yellow'    , 'background', 'none')
call s:Hl('MatchParen'  , 'red'       , 'selection' , 'none')
call s:Hl('ModeMsg'     , 'comment'   , 'background', 'none')
call s:Hl('MoreMsg'     , 'comment'   , 'background', 'none')
call s:Hl('NonText'     , 'nontext'   , 'background', 'none')
call s:Hl('Normal'      , 'foreground', 'background', 'none')
call s:Hl('Pmenu'       , 'foreground', 'selection' , 'none')
call s:Hl('PmenuSel'    , 'foreground', 'linenr'    , 'none')
call s:Hl('PmenuSbar'   , 'selection' , 'selection' , 'none')
call s:Hl('PmenuThumb'  , 'linenr'    , 'linenr'    , 'none')
call s:Hl('Question'    , 'aqua'      , 'background', 'none')
call s:Hl('Search'      , 'background', 'yellow'    , 'none')
call s:Hl('SpecialKey'  , 'nontext'   , 'background', 'none')
call s:Hl('SpellBad'    , 'red'       , 'selection' , 'none')
call s:Hl('SpellCap'    , 'purple'    , 'selection' , 'none')
call s:Hl('SpellLocal'  , 'yellow'    , 'selection' , 'none')
call s:Hl('SpellRare'   , 'aqua'      , 'selection' , 'none')
call s:Hl('StatusLine'  , 'foreground', 'line'      , 'none')
call s:Hl('StatusLineNC', 'comment'   , 'line'      , 'none')
call s:Hl('TabLine'     , 'comment'   , 'line'      , 'none')
call s:Hl('TabLineFill' , 'comment'   , 'line'      , 'none')
call s:Hl('TabLineSel'  , 'foreground', 'background', 'none')
call s:Hl('Visual'      , 'foreground', 'selection' , 'none')
call s:Hl('WarningMsg'  , 'red'       , 'background', 'none')
call s:Hl('WildMenu'    , 'line'      , 'foreground', 'none')
" call s:Hl('', '', '', 'none')

" Django Highlighting
" -------------------

call s:Hl('djangoTagBlock' , 'emphasis', 'background', 'none')
call s:Hl('djangoVarBlock' , 'emphasis', 'background', 'none')
call s:Hl('djangoStatement', 'blue'    , 'background', 'none')

" HTML Highlighting
" -----------------

call s:Hl('htmlArg'           , 'blue'   , 'background', 'none')
call s:Hl('htmlTag'           , 'comment', 'background', 'none')
call s:Hl('htmlEndTag'        , 'comment', 'background', 'none')
call s:Hl('htmlTagName'       , 'purple' , 'background', 'none')
call s:Hl('htmlSpecialTagName', 'purple' , 'background', 'none')

" Local Cleanup
" -------------

" Delete variables
unlet s:colors
" Delete functions
delfunction s:Hl

