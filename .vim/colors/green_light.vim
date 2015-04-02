" Vim color file
" Maintainer:   Li Jingyu <lijingyu1985@gmail.com>   
" Last Change:  9 December 2012


hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "green-light"
hi Comment  term=bold ctermfg=5 guifg=SlateBlue
hi Keyword term=standout ctermfg=4 guifg=Brown    
hi Normal guibg=#CAE8F0 guifg=Black
hi Comment  gui=italic
hi cStatement term=standout ctermfg=4 guifg=Brown cterm=bold
hi Identifier term=underline ctermfg=3 guifg=DarkCyan gui=bold

hi! def link cLabel	    	Statement
hi! def link cConditional   Statement
hi! def link cRepeat		Statement
hi! def link cStatement     Statement

hi User1 guifg=white  guibg=black  
hi User2 guifg=white  guibg=black  
hi User3 guifg=white  guibg=black  
hi User4 guifg=white  guibg=black  
hi User5 guifg=white  guibg=black  
