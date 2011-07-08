" mfukar's busybee

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "busybee"

hi CursorLine     guibg=#000900 ctermbg=16
hi CursorColumn   guibg=#000900 ctermbg=16
hi MatchParen     guifg=#EDDC03 guibg=#000900 gui=bold ctermfg=220 ctermbg=16 cterm=bold
hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
hi PmenuSel       guifg=#FFFFFF guibg=#E8FF09 ctermfg=255 ctermbg=190

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000900 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F180F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#FFFFFF guibg=#192219 gui=none ctermfg=255 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#2E3A01 gui=italic ctermfg=255 ctermbg=236 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#283128 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#192219 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000900 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#E8FF09 guibg=NONE	gui=bold ctermfg=190 ctermbg=NONE cterm=bold
hi Visual           guifg=#FFF126 guibg=#323232 gui=none ctermfg=226 ctermbg=236 cterm=none
hi SpecialKey       guifg=#FFE843 guibg=#0F180F gui=none ctermfg=221 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C5200 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#252B4C gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663766 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0600 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#FFFFD7 gui=bold ctermfg=230 cterm=bold


" Syntax highlighting
hi Comment guifg=#E8FF09 gui=none ctermfg=190 cterm=none
hi Constant guifg=#FFE843 gui=none ctermfg=221 cterm=none
hi Number guifg=#FFE843 gui=none ctermfg=221 cterm=none
hi Identifier guifg=#FEFF47 gui=none ctermfg=227 cterm=none
hi Statement guifg=#EDDC03 gui=none ctermfg=220 cterm=none
hi Function guifg=#F9A63A gui=none ctermfg=215 cterm=none
hi Special guifg=#DA6C00 gui=none ctermfg=166 cterm=none
hi PreProc guifg=#DA6C00 gui=none ctermfg=166 cterm=none
hi Keyword guifg=#EDDC03 gui=none ctermfg=220 cterm=none
hi String guifg=#FFF126 gui=none ctermfg=226 cterm=none
hi Type guifg=#B09502 gui=none ctermfg=136 cterm=none
hi pythonBuiltin guifg=#FEFF47 gui=none ctermfg=227 cterm=none
hi TabLineFill guifg=#66650F gui=none ctermfg=58 cterm=none
