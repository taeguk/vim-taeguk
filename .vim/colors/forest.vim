" Vim color file
" Maintainer: foxdonut
" Forest, earthy colors, started from fruit

set background=light
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "forest"

hi Normal       guifg=#000000 guibg=#ffffff

hi String guifg=#207070

" Search
hi IncSearch    gui=UNDERLINE guifg=#404040 guibg=#40ff40
hi Search       gui=NONE guifg=#404040 guibg=#ffff60

" Messages
hi ErrorMsg     gui=NONE guifg=#ff0000 guibg=#ffe4e4
hi WarningMsg   gui=NONE guifg=#ff0000 guibg=#ffe4e4
hi ModeMsg      gui=NONE guifg=#ff4080 guibg=NONE
hi MoreMsg      gui=NONE guifg=#009070 guibg=NONE
hi Question     gui=NONE guifg=#f0d030 guibg=NONE

" Split area
hi StatusLine   gui=NONE guifg=#ffffff guibg=#409f16
hi StatusLineNC gui=NONE guifg=#a4a4a4 guibg=#404040
hi VertSplit    gui=NONE guifg=#f8f8f8 guibg=#404040
hi WildMenu     gui=BOLD guifg=#f8f8f8 guibg=#ff8040

" Diff
hi DiffText     gui=NONE guifg=#e04040 guibg=#ffd8d8
hi DiffChange   gui=NONE guifg=#408040 guibg=#d0f0d0
hi DiffDelete   gui=NONE guifg=#4848ff guibg=#ffffd0
hi DiffAdd      gui=NONE guifg=#4848ff guibg=#ffffd0

" Cursor
hi Cursor       gui=NONE guifg=#ffffff guibg=#ea7840
hi lCursor      gui=NONE guifg=#f8f8f8 guibg=#80f000
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#80f000
hi CursorLine   guibg=#ffffe8

" Matching paren to cursor
hi MatchParen   guifg=#008000 guibg=#00ff00

" Fold
hi Folded       gui=NONE guifg=#5c6020 guibg=#b8e84c
hi FoldColumn   gui=NONE guifg=#98a048 guibg=#f0f0f0

" Other
hi Directory    gui=NONE guifg=#70b800 guibg=NONE
hi LineNr       gui=NONE guifg=#306030 guibg=#eeeeee
hi NonText      gui=BOLD guifg=#c0a000 guibg=#ececec
hi SpecialKey   gui=NONE guifg=#ffff40 guibg=NONE
hi Title        gui=NONE guifg=#50a000 guibg=bg
hi Visual       gui=NONE guifg=#484848 guibg=#e0e0e0

" Syntax group
hi Comment      gui=NONE guifg=#a0a080 guibg=NONE
hi Constant     gui=NONE guifg=#ff0000 guibg=NONE
hi Error        gui=BOLD guifg=#ffffff guibg=#ff8040
hi Identifier   gui=NONE guifg=#606820 guibg=NONE
hi Ignore       gui=NONE guifg=#f8f8f8 guibg=NONE
hi PreProc      gui=NONE guifg=#e00000 guibg=NONE
hi Special      gui=NONE guifg=#944a00 guibg=NONE
hi Statement    gui=NONE guifg=#707000 guibg=NONE
hi Todo         gui=UNDERLINE guifg=#ff7000 guibg=#fff4e0
hi Type         gui=NONE guifg=#aa5810 guibg=NONE
hi Underlined   gui=UNDERLINE guifg=fg guibg=NONE
