" Author: Kashif Razzaqui
" I like it dark and colourful

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "kashif"

hi Normal	guifg=#F5F6FF guibg=#000000

hi Comment	guifg=#aeaeae gui=italic
hi Constant	guifg=#d7fa41 gui=bold
hi String       guifg=#E5EAD2 gui=none
hi Search       guifg=#FFFFFF guibg=#6195ED gui=bold
hi Statement    guifg=#F2EF07 gui=bold
hi Entity       guifg=#93CCEA gui=bold
hi Support      guifg=#FFFFFF gui=bold
hi Function     guifg=#6495ed gui=bold
hi BuiltinFunc  guifg=#6495ed gui=bold
hi LineNr       guifg=#aeaeae guibg=#000000 gui=none
hi Title	guifg=#f6f3e8 guibg=NONE	gui=bold
hi NonText 	guifg=#808080 guibg=#0D1021	gui=none

hi Visual       guifg=#ffffff guibg=#6195ED
hi VertSplit    guifg=#444444 guibg=#444444
hi StatusLine   guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none


hi Define	guifg=#F22635 gui=bold
hi Structure    guifg=#F22635
hi ExceptionType guifg=#F22635 gui=bold " For Exceptions
hi Special      guifg=#5DE5DA gui=bold
hi Test 	guifg=#FFFFFF gui=bold " For text in parends
hi Character 	guifg=#F22635
hi Number 	guifg=#80F4EB
hi Boolean 	guifg=#ED6173
hi Float 	guifg=#F22635
hi Conditional  guifg=#FB8C6A gui=bold
hi StorageClass guifg=#E4F297 gui=bold
hi Operator 	guifg=#FFFFFF gui=bold
hi Error        guifg=#960050 guibg=#1E0010

hi VertSplit guibg=#C0FFFF guifg=#075554 gui=none
hi Folded    guibg=#FFFFFF guifg=black
hi FoldColumn   guibg=#800080 guifg=tan
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=#6195ED guifg=black
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

