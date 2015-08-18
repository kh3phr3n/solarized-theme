" File: solarized-dark.vim
" Source: https://github.com/kh3phr3n/solarized-theme

" Initialization
" --------------

hi clear
set background=dark
let g:colors_name='solarized-dark'

if exists('syntax_on')
    syntax reset
endif

if !has('gui_running') && &t_Co != 256
    finish
endif

" Color Palette
" -------------

let s:colors = {}

let s:colors.red        = ['dc322f', 166]
let s:colors.aqua       = ['2aa198',  36]
let s:colors.blue       = ['268bd2',  32]
let s:colors.green      = ['859900', 100]
let s:colors.orange     = ['cb4b16', 166]
let s:colors.yellow     = ['b58900', 136]
let s:colors.purple     = ['6c71c4',  62]
let s:colors.magenta    = ['d33682', 168]

" let s:colors.addbg      = ['', ]
" let s:colors.addfg      = ['', ]
" let s:colors.changebg   = ['', ]
" let s:colors.changefg   = ['', ]

" let s:colors.darkred    = ['', ]
" let s:colors.darkblue   = ['', ]
" let s:colors.darkcyan   = ['', ]
" let s:colors.darkpurple = ['', ]
" let s:colors.darkcolumn = ['', ]

let s:colors.line       = ['', ]
let s:colors.window     = ['', ]
let s:colors.comment    = ['586e75', 242]
let s:colors.selection  = ['073642', 235]
let s:colors.background = ['002b36', 234]
let s:colors.foreground = ['839496', 246]

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

call s:Hl('Comment'   , '', 'background', 'none')
call s:Hl('Constant'  , '', 'background', 'none')
call s:Hl('String'    , '', 'background', 'none')
call s:Hl('Identifier', '', 'background', 'none')
call s:Hl('Function'  , '', 'background', 'none')
call s:Hl('Statement' , '', 'background', 'none')
call s:Hl('Operator'  , '', 'background', 'none')
call s:Hl('PreProc'   , '', 'background', 'none')
call s:Hl('Type'      , '', 'background', 'none')
call s:Hl('Structure' , '', 'background', 'none')
call s:Hl('Special'   , '', 'background', 'none')
call s:Hl('Underlined', '', 'background', 'none')
call s:Hl('Ignore'    , '', 'background', 'none')
call s:Hl('Error'     , '', 'background', 'none')
call s:Hl('Todo'      , '', 'background', 'none')

" Vim Highlighting: (see :help highlight-groups)
" ----------------------------------------------

" Optionals: VisualNOS, WildMenu
" Optionals: PmenuSbar, PmenuThumb
" Optionals: Conceal, Cursor, CursorIM

call s:Hl('Title'       , '', '', 'none')
call s:Hl('ColorColumn' , '', '', 'none')
call s:Hl('CursorColumn', '', '', 'none')
call s:Hl('CursorLine'  , '', '', 'none')
call s:Hl('Directory'   , '', '', 'none')
call s:Hl('DiffAdd'     , '', '', 'none')
call s:Hl('DiffChange'  , '', '', 'none')
call s:Hl('DiffDelete'  , '', '', 'none')
call s:Hl('DiffText'    , '', '', 'none')
call s:Hl('ErrorMsg'    , '', '', 'none')
call s:Hl('VertSplit'   , '', '', 'none')
call s:Hl('Folded'      , '', '', 'none')
call s:Hl('FoldColumn'  , '', '', 'none')
call s:Hl('SignColumn'  , '', '', 'none')
call s:Hl('IncSearch'   , '', '', 'none')
call s:Hl('LineNr'      , '', '', 'none')
call s:Hl('CursorLineNr', '', '', 'none')
call s:Hl('MatchParen'  , '', '', 'none')
call s:Hl('ModeMsg'     , '', '', 'none')
call s:Hl('MoreMsg'     , '', '', 'none')
call s:Hl('NonText'     , '', '', 'none')
call s:Hl('Normal'      , '', '', 'none')
call s:Hl('Pmenu'       , '', '', 'none')
call s:Hl('PmenuSel'    , '', '', 'none')
call s:Hl('Question'    , '', '', 'none')
call s:Hl('Search'      , '', '', 'none')
call s:Hl('SpecialKey'  , '', '', 'none')
call s:Hl('SpellBad'    , '', '', 'none')
call s:Hl('SpellCap'    , '', '', 'none')
call s:Hl('SpellLocal'  , '', '', 'none')
call s:Hl('SpellRare'   , '', '', 'none')
call s:Hl('StatusLine'  , '', '', 'none')
call s:Hl('StatusLineNC', '', '', 'none')
call s:Hl('TabLine'     , '', '', 'none')
call s:Hl('TabLineFill' , '', '', 'none')
call s:Hl('TabLineSel'  , '', '', 'none')
call s:Hl('Visual'      , '', '', 'none')
call s:Hl('WarningMsg'  , '', '', 'none')
" call s:Hl('', '', '', 'none')

" Local Cleanup
" -------------

" Delete variables
unlet s:colors
" Delete functions
delfunction s:Hl

