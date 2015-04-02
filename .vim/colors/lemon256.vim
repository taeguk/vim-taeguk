" Vim color file
" Name:         lemon256
" Maintainer:   Vayn <vayn@vayn.de>
" Last Change:  2011年 08月 25日 星期四 01:37:45 CST
" Thanks To:    lilydjwg, Ethan Schoonover(author of solarized)
" License:      MIT License
" Options:
"
" If you want to set long line warning, copy this in your vimrc:
"
"   let g:lemon256_longline = 1
"
"
" The default length of a line is 120, you can change it by putting
" the following in your vimrc:
"
"   let g:lenmon256_len = 79
"
hi clear

set background=dark
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif
let g:colors_name="lemon256"

" Error format when a line is longer than g:lemon256_longlen, {{{1
" default length is 120.
if exists('g:lemon256_longline') && g:lemon256_longline == 1
  if ! exists('g:lemon256_len')
    let g:lemon256_len = 121
  end
  exe 'match LongLineWarning "\%'.g:lemon256_len.'v.*"'
end

" Change term cursor color in insert mode {{{1
let s:color_normal = 'azure4'
let s:color_insert = 'DarkGoldenrod1'
let s:color_exit = 'azure4'
if &term =~ 'xterm\|rxvt'
  exe 'silent !echo -ne "\e]12;"' . s:color_normal . '"\007"'
  let &t_SI="\e]12;" . s:color_insert . "\007"
  let &t_EI="\e]12;" . s:color_normal . "\007"
  exe 'autocmd VimLeave * :!echo -ne "\e]12;"' . s:color_exit . '"\007"'
elseif &term =~ "screen"
  if exists('$TMUX')
    exe 'silent !echo -ne "\033Ptmux;\033\e]12;"' . s:color_normal . '"\007\033\\"'
    let &t_SI="\033Ptmux;\033\e]12;" . s:color_insert . "\007\033\\"
    let &t_EI="\033Ptmux;\033\e]12;" . s:color_normal . "\007\033\\"
    exe 'autocmd VimLeave * :!echo -ne "\033Ptmux;\033\e]12;"' . s:color_exit . '"\007\033\\"'
  else
    exe 'silent !echo -ne "\033P\e]12;"' . s:color_normal . '"\007\033\\"'
    let &t_SI="\033P\e]12;" . s:color_insert . "\007\033\\"
    let &t_EI="\033P\e]12;" . s:color_normal . "\007\033\\"
    exe 'autocmd VimLeave * :!echo -ne "\033P\e]12;"' . s:color_exit . '"\007\033\\"'
  endif
endif
unlet s:color_normal
unlet s:color_insert
unlet s:color_exit

" Colors {{{1
if &t_Co > 255
  highlight Boolean         cterm=bold                    ctermfg=141
  highlight Character                                     ctermfg=185
  highlight Number                                        ctermfg=141
  highlight String                                        ctermfg=220
  highlight Conditional     cterm=bold                    ctermfg=68
  highlight Constant        cterm=bold                    ctermfg=148
  highlight Cursor                          ctermbg=12    ctermfg=8
  highlight Debug           cterm=bold                    ctermfg=250
  highlight Define                                        ctermfg=81
  highlight Delimiter                                     ctermfg=245
  highlight DiffAdd                         ctermbg=0
  highlight DiffChange                      ctermbg=0     ctermfg=244
  highlight DiffDelete                      ctermbg=0     ctermfg=9
  highlight DiffText        cterm=bold      ctermbg=0

  highlight Directory       cterm=bold                    ctermfg=112
  highlight Error                           ctermbg=10    ctermfg=1
  highlight ErrorMsg        cterm=bold      ctermbg=1     ctermfg=0
  highlight Exception       cterm=bold                    ctermfg=112
  highlight Float                                         ctermfg=141
  highlight FoldColumn                      ctermbg=8     ctermfg=10
  highlight Folded                          ctermbg=10    ctermfg=8
  highlight Function                                      ctermfg=154
  highlight Identifier                                    ctermfg=172
  highlight Ignore                                        ctermfg=244
  highlight IncSearch                       ctermbg=16    ctermfg=144

  highlight Keyword         cterm=bold                    ctermfg=161
  highlight Label           cterm=none                    ctermfg=185
  highlight Macro                                         ctermfg=144
  highlight SpecialKey                                    ctermfg=148

  highlight helpExample                                   ctermfg=178
  highlight helpOption                                    ctermfg=6
  highlight HelpHyperTextEntry                            ctermfg=2
  highlight HelpHyperTextJump                             ctermfg=33

  highlight MatchParen      cterm=bold      ctermbg=208   ctermfg=16

  highlight ModeMsg                                       ctermfg=185
  highlight MoreMsg                                       ctermfg=185
  highlight Operator        cterm=bold                    ctermfg=68

  " complete menu
  highlight Pmenu                           ctermbg=12    ctermfg=0
  highlight PmenuSel                        ctermbg=10    ctermfg=7
  highlight PmenuSbar                       ctermbg=7     ctermfg=12
  highlight PmenuThumb                                    ctermfg=0

  highlight PreCondit       cterm=bold                    ctermfg=112
  highlight PreProc                                       ctermfg=112
  highlight Question                                      ctermfg=81
  highlight Repeat          cterm=bold                    ctermfg=161
  highlight Search                          ctermbg=32    ctermfg=231
  " marks column
  highlight SignColumn                      ctermbg=235   ctermfg=112
  highlight SpecialChar     cterm=bold                    ctermfg=161
  highlight SpecialComment  cterm=bold                    ctermfg=239
  highlight Special                                       ctermfg=81
  highlight SpecialKey                                    ctermfg=245

  if has("spell")
    highlight SpellBad      cterm=bold                    ctermbg=240
    highlight SpellCap      cterm=underline
    highlight SpellLocal    cterm=underline
    highlight SpellRare     cterm=underline
  endif

  highlight Statement       cterm=bold                    ctermfg=68
  highlight htmlStatement                                 ctermfg=110
  highlight StatusLine                                    ctermfg=14
  highlight StatusLineNC                    ctermbg=0     ctermfg=11
  highlight StorageClass                                  ctermfg=208
  highlight Structure       cterm=bold                    ctermfg=81
  highlight Tag                                           ctermfg=161
  highlight Title                                         ctermfg=209
  highlight Todo            cterm=bold      ctermbg=235   ctermfg=231

  highlight Typedef                                       ctermfg=81
  highlight Type            cterm=none                    ctermfg=81
  highlight Underlined      cterm=underline               ctermfg=244

  highlight TabLine         cterm=none      ctermbg=10    ctermfg=12
  highlight TabLineSel                      ctermbg=8     ctermfg=7
  highlight TabLineFill                                   ctermfg=11

  highlight VertSplit       cterm=bold      ctermbg=0     ctermfg=10
  highlight VisualNOS                       ctermbg=237
  highlight Visual                          ctermbg=237
  highlight WarningMsg      cterm=bold      ctermbg=236   ctermfg=231
  highlight WildMenu                        ctermbg=7     ctermfg=0

  highlight Normal                          ctermbg=8     ctermfg=12
  highlight Comment                                       ctermfg=10
  highlight CursorLine      cterm=none      ctermbg=0
  highlight CursorColumn                    ctermbg=0
  highlight LineNr                          ctermbg=0     ctermfg=10
  highlight NonText                         ctermbg=0     ctermfg=235

  highlight LongLineWarning cterm=underline ctermbg=1     ctermfg=0
end
