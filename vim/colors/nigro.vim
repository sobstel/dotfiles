set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif

" Popup Menu
highlight PMenu      ctermbg=green ctermfg=white
highlight PMenuSel   ctermbg=white ctermfg=Black
highlight PMenuSBar  ctermbg=red   ctermfg=white
highlight PMenuThumb ctermbg=white ctermfg=red

" JSLint
highlight JSLintError ctermbg=red ctermfg=white
