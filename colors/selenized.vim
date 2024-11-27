" Name:         Selenized dark/light, beta version
" Author:       Jan Warchoł <jan.warchol@gmail.com>
" Maintainer:   Jan Warchoł <jan.warchol@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Mon 18 Sep 2023 11:38:37 PM EDT

" Generated by Colortemplate v2.2.3

hi clear
let g:colors_name = 'selenized'

let s:t_Co = has('gui_running') ? -1 : get(g:, 'selenized_t_Co', get(g:, 't_Co', exists('&t_Co') ? +&t_Co : 0))
let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#184956', '#fa5750', '#75b938', '#dbb32d', '#4695f7', '#f275be', '#41c7b9', '#72898f', '#2d5b69', '#ff665c', '#84c747', '#ebc13d', '#58a3ff', '#ff84cd', '#53d6c7', '#cad8d9']
  endif
  if has('nvim')
    let g:terminal_color_0 = '#184956'
    let g:terminal_color_1 = '#fa5750'
    let g:terminal_color_2 = '#75b938'
    let g:terminal_color_3 = '#dbb32d'
    let g:terminal_color_4 = '#4695f7'
    let g:terminal_color_5 = '#f275be'
    let g:terminal_color_6 = '#41c7b9'
    let g:terminal_color_7 = '#72898f'
    let g:terminal_color_8 = '#2d5b69'
    let g:terminal_color_9 = '#ff665c'
    let g:terminal_color_10 = '#84c747'
    let g:terminal_color_11 = '#ebc13d'
    let g:terminal_color_12 = '#58a3ff'
    let g:terminal_color_13 = '#ff84cd'
    let g:terminal_color_14 = '#53d6c7'
    let g:terminal_color_15 = '#cad8d9'
  endif
  hi Normal guifg=#adbcbc guibg=#103c48 gui=NONE cterm=NONE
  hi IncSearch guifg=#ed8649 guibg=NONE gui=reverse cterm=reverse
  hi Search guifg=#dbb32d guibg=NONE gui=reverse cterm=reverse
  hi! link QuickFixLine Search
  hi Visual guifg=NONE guibg=#2d5b69 gui=NONE cterm=NONE
  hi MatchParen guifg=#ebc13d guibg=#2d5b69 gui=bold cterm=bold
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi! link lCursor Cursor
  hi CursorLine guifg=NONE guibg=#184956 gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#184956 gui=NONE cterm=NONE
  hi Folded guifg=NONE guibg=#184956 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#2d5b69 gui=NONE cterm=NONE
  hi LineNr guifg=#72898f guibg=#184956 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#cad8d9 guibg=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#72898f guibg=#72898f gui=NONE cterm=NONE
  hi StatusLine guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi StatusLineNC guifg=NONE guibg=#2d5b69 gui=NONE cterm=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLineSel guifg=#cad8d9 guibg=#184956 gui=bold,reverse cterm=bold,reverse
  hi TabLine guifg=#72898f guibg=NONE gui=reverse cterm=reverse
  hi TabLineFill guifg=#72898f guibg=NONE gui=reverse cterm=reverse
  hi ToolbarButton guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi ToolbarLine guifg=NONE guibg=#2d5b69 gui=NONE cterm=NONE
  hi Pmenu guifg=#72898f guibg=#184956 gui=NONE cterm=NONE
  hi PmenuSel guifg=NONE guibg=#2d5b69 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#72898f gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#2d5b69 gui=NONE cterm=NONE
  hi DiffAdd guifg=#75b938 guibg=#184956 gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=#184956 gui=NONE cterm=NONE
  hi DiffDelete guifg=#fa5750 guibg=#184956 gui=NONE cterm=NONE
  hi DiffText guifg=#184956 guibg=#dbb32d gui=NONE cterm=NONE
  hi DiagnosticError guifg=#fa5750 guibg=#184956 gui=NONE cterm=NONE
  hi DiagnosticWarn guifg=#ed8649 guibg=#184956 gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#58a3ff guibg=#184956 gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#72898f guibg=#184956 gui=NONE cterm=NONE
  hi DiagnosticOk guifg=#84c747 guibg=#184956 gui=NONE cterm=NONE
  hi DiagnosticUnderlineError guifg=#adbcbc guibg=#103c48 guisp=#fa5750 gui=underline cterm=underline
  hi DiagnosticUnderlineWarn guifg=#adbcbc guibg=#103c48 guisp=#ed8649 gui=underline cterm=underline
  hi DiagnosticUnderlineInfo guifg=#adbcbc guibg=#103c48 guisp=#58a3ff gui=underline cterm=underline
  hi DiagnosticUnderlineHint guifg=#adbcbc guibg=#103c48 guisp=#72898f gui=underline cterm=underline
  hi DiagnosticUnderlineOk guifg=#adbcbc guibg=#103c48 guisp=#84c747 gui=underline cterm=underline
  hi DiagnosticDeprecated guifg=#adbcbc guibg=#103c48 guisp=#fa5750 gui=strikethrough cterm=strikethrough
  hi Comment guifg=#72898f guibg=NONE gui=italic cterm=italic
  hi Constant guifg=#41c7b9 guibg=NONE gui=NONE cterm=NONE
  hi! link String Constant
  hi! link Number Constant
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Float Constant
  hi Identifier guifg=#58a3ff guibg=NONE gui=NONE cterm=NONE
  hi! link Function Identifier
  hi Statement guifg=#ebc13d guibg=NONE gui=NONE cterm=NONE
  hi! link Conditional Statement
  hi! link Repeat Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Exception Statement
  hi! link Operator Statement
  hi PreProc guifg=#ed8649 guibg=NONE gui=NONE cterm=NONE
  hi! link Define PreProc
  hi! link PreCondit PreProc
  hi! link Include PreProc
  hi! link Macro Include
  hi Type guifg=#75b938 guibg=NONE gui=NONE cterm=NONE
  hi! link Typedef Type
  hi! link StorageClass Type
  hi! link Structure Type
  hi Special guifg=#fa5750 guibg=NONE gui=NONE cterm=NONE
  hi! link SpecialChar Special
  hi! link Delimiter Special
  hi! link SpecialComment Special
  hi! link Debug Special
  hi! link Tag Special
  hi Error guifg=#fa5750 guibg=NONE gui=bold cterm=bold
  hi Todo guifg=#f275be guibg=NONE gui=bold cterm=bold
  hi Underlined guifg=#58a3ff guibg=NONE gui=underline cterm=underline
  hi Ignore guifg=#2d5b69 guibg=NONE gui=NONE cterm=NONE
  hi VimCommand guifg=#dbb32d guibg=NONE gui=NONE cterm=NONE
  hi RubyDefine guifg=#cad8d9 guibg=NONE gui=bold cterm=bold
  if !s:italics
    hi Comment gui=NONE cterm=NONE
  endif
  if get(g:, 'selenized_green_keywords', 0)
    hi Statement guifg=#75b938 guibg=NONE gui=NONE cterm=NONE
    hi Type guifg=#dbb32d guibg=NONE gui=NONE cterm=NONE
  endif
  hi Terminal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Directory guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi EndOfBuffer guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ErrorMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi FoldColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ModeMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi MoreMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi NonText guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Question guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SignColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpecialKey guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellBad guifg=NONE guibg=NONE guisp=#fa5750 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellCap guifg=NONE guibg=NONE guisp=#fa5750 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellLocal guifg=NONE guibg=NONE guisp=#dbb32d gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellRare guifg=NONE guibg=NONE guisp=#41c7b9 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi Title guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi WarningMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi WildMenu guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
else
  " Light background
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#e9e4d0', '#d2212d', '#489100', '#ad8900', '#0072d4', '#ca4898', '#009c8f', '#909995', '#cfcebe', '#cc1729', '#428b00', '#a78300', '#006dce', '#c44392', '#00978a', '#3a4d53']
  endif
  if has('nvim')
    let g:terminal_color_0 = '#e9e4d0'
    let g:terminal_color_1 = '#d2212d'
    let g:terminal_color_2 = '#489100'
    let g:terminal_color_3 = '#ad8900'
    let g:terminal_color_4 = '#0072d4'
    let g:terminal_color_5 = '#ca4898'
    let g:terminal_color_6 = '#009c8f'
    let g:terminal_color_7 = '#909995'
    let g:terminal_color_8 = '#cfcebe'
    let g:terminal_color_9 = '#cc1729'
    let g:terminal_color_10 = '#428b00'
    let g:terminal_color_11 = '#a78300'
    let g:terminal_color_12 = '#006dce'
    let g:terminal_color_13 = '#c44392'
    let g:terminal_color_14 = '#00978a'
    let g:terminal_color_15 = '#3a4d53'
  endif
  hi Normal guifg=#53676d guibg=#fbf3db gui=NONE cterm=NONE
  hi IncSearch guifg=#c25d1e guibg=NONE gui=reverse cterm=reverse
  hi Search guifg=#ad8900 guibg=NONE gui=reverse cterm=reverse
  hi! link QuickFixLine Search
  hi Visual guifg=NONE guibg=#cfcebe gui=NONE cterm=NONE
  hi MatchParen guifg=#a78300 guibg=#cfcebe gui=bold cterm=bold
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi! link lCursor Cursor
  hi CursorLine guifg=NONE guibg=#e9e4d0 gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#e9e4d0 gui=NONE cterm=NONE
  hi Folded guifg=NONE guibg=#e9e4d0 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#cfcebe gui=NONE cterm=NONE
  hi LineNr guifg=#909995 guibg=#e9e4d0 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#3a4d53 guibg=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#909995 guibg=#909995 gui=NONE cterm=NONE
  hi StatusLine guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi StatusLineNC guifg=NONE guibg=#cfcebe gui=NONE cterm=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLineSel guifg=#3a4d53 guibg=#e9e4d0 gui=bold,reverse cterm=bold,reverse
  hi TabLine guifg=#909995 guibg=NONE gui=reverse cterm=reverse
  hi TabLineFill guifg=#909995 guibg=NONE gui=reverse cterm=reverse
  hi ToolbarButton guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi ToolbarLine guifg=NONE guibg=#cfcebe gui=NONE cterm=NONE
  hi Pmenu guifg=#909995 guibg=#e9e4d0 gui=NONE cterm=NONE
  hi PmenuSel guifg=NONE guibg=#cfcebe gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE guibg=#909995 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#cfcebe gui=NONE cterm=NONE
  hi DiffAdd guifg=#489100 guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiffDelete guifg=#d2212d guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiffText guifg=#e9e4d0 guibg=#ad8900 gui=NONE cterm=NONE
  hi DiagnosticError guifg=#d2212d guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiagnosticWarn guifg=#c25d1e guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#006dce guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#909995 guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiagnosticOk guifg=#428b00 guibg=#e9e4d0 gui=NONE cterm=NONE
  hi DiagnosticUnderlineError guifg=#53676d guibg=#fbf3db guisp=#d2212d gui=underline cterm=underline
  hi DiagnosticUnderlineWarn guifg=#53676d guibg=#fbf3db guisp=#c25d1e gui=underline cterm=underline
  hi DiagnosticUnderlineInfo guifg=#53676d guibg=#fbf3db guisp=#006dce gui=underline cterm=underline
  hi DiagnosticUnderlineHint guifg=#53676d guibg=#fbf3db guisp=#909995 gui=underline cterm=underline
  hi DiagnosticUnderlineOk guifg=#53676d guibg=#fbf3db guisp=#428b00 gui=underline cterm=underline
  hi DiagnosticDeprecated guifg=#53676d guibg=#fbf3db guisp=#d2212d gui=strikethrough cterm=strikethrough
  hi Comment guifg=#909995 guibg=NONE gui=italic cterm=italic
  hi Constant guifg=#009c8f guibg=NONE gui=NONE cterm=NONE
  hi! link String Constant
  hi! link Number Constant
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Float Constant
  hi Identifier guifg=#006dce guibg=NONE gui=NONE cterm=NONE
  hi! link Function Identifier
  hi Statement guifg=#a78300 guibg=NONE gui=NONE cterm=NONE
  hi! link Conditional Statement
  hi! link Repeat Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Exception Statement
  hi! link Operator Statement
  hi PreProc guifg=#c25d1e guibg=NONE gui=NONE cterm=NONE
  hi! link Define PreProc
  hi! link PreCondit PreProc
  hi! link Include PreProc
  hi! link Macro Include
  hi Type guifg=#489100 guibg=NONE gui=NONE cterm=NONE
  hi! link Typedef Type
  hi! link StorageClass Type
  hi! link Structure Type
  hi Special guifg=#d2212d guibg=NONE gui=NONE cterm=NONE
  hi! link SpecialChar Special
  hi! link Delimiter Special
  hi! link SpecialComment Special
  hi! link Debug Special
  hi! link Tag Special
  hi Error guifg=#d2212d guibg=NONE gui=bold cterm=bold
  hi Todo guifg=#ca4898 guibg=NONE gui=bold cterm=bold
  hi Underlined guifg=#8762c6 guibg=NONE gui=underline cterm=underline
  hi Ignore guifg=#cfcebe guibg=NONE gui=NONE cterm=NONE
  hi VimCommand guifg=#ad8900 guibg=NONE gui=NONE cterm=NONE
  hi RubyDefine guifg=#3a4d53 guibg=NONE gui=bold cterm=bold
  if !s:italics
    hi Comment gui=NONE cterm=NONE
  endif
  if get(g:, 'selenized_green_keywords', 0)
    hi Statement guifg=#489100 guibg=NONE gui=NONE cterm=NONE
    hi Type guifg=#ad8900 guibg=NONE gui=NONE cterm=NONE
  endif
  hi Terminal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Directory guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi EndOfBuffer guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ErrorMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi FoldColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ModeMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi MoreMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi NonText guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Question guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SignColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpecialKey guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellBad guifg=NONE guibg=NONE guisp=#d2212d gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellCap guifg=NONE guibg=NONE guisp=#d2212d gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellLocal guifg=NONE guibg=NONE guisp=#ad8900 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi SpellRare guifg=NONE guibg=NONE guisp=#009c8f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
  hi Title guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi WarningMsg guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi WildMenu guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
endif

if s:t_Co >= 256
  if &background ==# 'dark'
    hi Normal ctermfg=250 ctermbg=237 cterm=NONE
    hi IncSearch ctermfg=173 ctermbg=NONE cterm=reverse
    hi Search ctermfg=178 ctermbg=NONE cterm=reverse
    hi! link QuickFixLine Search
    hi Visual ctermfg=NONE ctermbg=240 cterm=NONE
    hi MatchParen ctermfg=178 ctermbg=240 cterm=bold
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi! link lCursor Cursor
    hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=238 cterm=NONE
    hi Folded ctermfg=NONE ctermbg=238 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=240 cterm=NONE
    hi LineNr ctermfg=245 ctermbg=238 cterm=NONE
    hi CursorLineNr ctermfg=252 ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=245 ctermbg=245 cterm=NONE
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi StatusLineNC ctermfg=NONE ctermbg=240 cterm=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi TabLineSel ctermfg=252 ctermbg=238 cterm=bold,reverse
    hi TabLine ctermfg=245 ctermbg=NONE cterm=reverse
    hi TabLineFill ctermfg=245 ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarLine ctermfg=NONE ctermbg=240 cterm=NONE
    hi Pmenu ctermfg=245 ctermbg=238 cterm=NONE
    hi PmenuSel ctermfg=NONE ctermbg=240 cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=245 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=240 cterm=NONE
    hi DiffAdd ctermfg=70 ctermbg=238 cterm=NONE
    hi DiffChange ctermfg=NONE ctermbg=238 cterm=NONE
    hi DiffDelete ctermfg=203 ctermbg=238 cterm=NONE
    hi DiffText ctermfg=238 ctermbg=178 cterm=NONE
    hi DiagnosticError ctermfg=203 ctermbg=238 cterm=NONE
    hi DiagnosticWarn ctermfg=173 ctermbg=238 cterm=NONE
    hi DiagnosticInfo ctermfg=39 ctermbg=238 cterm=NONE
    hi DiagnosticHint ctermfg=245 ctermbg=238 cterm=NONE
    hi DiagnosticOk ctermfg=113 ctermbg=238 cterm=NONE
    hi DiagnosticUnderlineError ctermfg=250 ctermbg=237 cterm=underline
    hi DiagnosticUnderlineWarn ctermfg=250 ctermbg=237 cterm=underline
    hi DiagnosticUnderlineInfo ctermfg=250 ctermbg=237 cterm=underline
    hi DiagnosticUnderlineHint ctermfg=250 ctermbg=237 cterm=underline
    hi DiagnosticUnderlineOk ctermfg=250 ctermbg=237 cterm=underline
    hi DiagnosticDeprecated ctermfg=250 ctermbg=237 cterm=strikethrough
    hi Comment ctermfg=245 ctermbg=NONE cterm=italic
    hi Constant ctermfg=44 ctermbg=NONE cterm=NONE
    hi! link String Constant
    hi! link Number Constant
    hi! link Boolean Constant
    hi! link Character Constant
    hi! link Float Constant
    hi Identifier ctermfg=39 ctermbg=NONE cterm=NONE
    hi! link Function Identifier
    hi Statement ctermfg=178 ctermbg=NONE cterm=NONE
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Keyword Statement
    hi! link Label Statement
    hi! link Exception Statement
    hi! link Operator Statement
    hi PreProc ctermfg=173 ctermbg=NONE cterm=NONE
    hi! link Define PreProc
    hi! link PreCondit PreProc
    hi! link Include PreProc
    hi! link Macro Include
    hi Type ctermfg=70 ctermbg=NONE cterm=NONE
    hi! link Typedef Type
    hi! link StorageClass Type
    hi! link Structure Type
    hi Special ctermfg=203 ctermbg=NONE cterm=NONE
    hi! link SpecialChar Special
    hi! link Delimiter Special
    hi! link SpecialComment Special
    hi! link Debug Special
    hi! link Tag Special
    hi Error ctermfg=203 ctermbg=NONE cterm=bold
    hi Todo ctermfg=205 ctermbg=NONE cterm=bold
    hi Underlined ctermfg=39 ctermbg=NONE cterm=underline
    hi Ignore ctermfg=240 ctermbg=NONE cterm=NONE
    hi VimCommand ctermfg=178 ctermbg=NONE cterm=NONE
    hi RubyDefine ctermfg=252 ctermbg=NONE cterm=bold
    if !s:italics
      hi Comment cterm=NONE
    endif
    if get(g:, 'selenized_green_keywords', 0)
      hi Statement ctermfg=70 ctermbg=NONE cterm=NONE
      hi Type ctermfg=178 ctermbg=NONE cterm=NONE
    endif
    hi Terminal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpellBad ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=NONE
  else
    " Light background
    hi Normal ctermfg=241 ctermbg=230 cterm=NONE
    hi IncSearch ctermfg=166 ctermbg=NONE cterm=reverse
    hi Search ctermfg=136 ctermbg=NONE cterm=reverse
    hi! link QuickFixLine Search
    hi Visual ctermfg=NONE ctermbg=252 cterm=NONE
    hi MatchParen ctermfg=136 ctermbg=252 cterm=bold
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi! link lCursor Cursor
    hi CursorLine ctermfg=NONE ctermbg=187 cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=187 cterm=NONE
    hi Folded ctermfg=NONE ctermbg=187 cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=252 cterm=NONE
    hi LineNr ctermfg=246 ctermbg=187 cterm=NONE
    hi CursorLineNr ctermfg=239 ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=246 ctermbg=246 cterm=NONE
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi StatusLineNC ctermfg=NONE ctermbg=252 cterm=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi TabLineSel ctermfg=239 ctermbg=187 cterm=bold,reverse
    hi TabLine ctermfg=246 ctermbg=NONE cterm=reverse
    hi TabLineFill ctermfg=246 ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarLine ctermfg=NONE ctermbg=252 cterm=NONE
    hi Pmenu ctermfg=246 ctermbg=187 cterm=NONE
    hi PmenuSel ctermfg=NONE ctermbg=252 cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=246 cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=252 cterm=NONE
    hi DiffAdd ctermfg=64 ctermbg=187 cterm=NONE
    hi DiffChange ctermfg=NONE ctermbg=187 cterm=NONE
    hi DiffDelete ctermfg=160 ctermbg=187 cterm=NONE
    hi DiffText ctermfg=187 ctermbg=136 cterm=NONE
    hi DiagnosticError ctermfg=160 ctermbg=187 cterm=NONE
    hi DiagnosticWarn ctermfg=166 ctermbg=187 cterm=NONE
    hi DiagnosticInfo ctermfg=25 ctermbg=187 cterm=NONE
    hi DiagnosticHint ctermfg=246 ctermbg=187 cterm=NONE
    hi DiagnosticOk ctermfg=28 ctermbg=187 cterm=NONE
    hi DiagnosticUnderlineError ctermfg=241 ctermbg=230 cterm=underline
    hi DiagnosticUnderlineWarn ctermfg=241 ctermbg=230 cterm=underline
    hi DiagnosticUnderlineInfo ctermfg=241 ctermbg=230 cterm=underline
    hi DiagnosticUnderlineHint ctermfg=241 ctermbg=230 cterm=underline
    hi DiagnosticUnderlineOk ctermfg=241 ctermbg=230 cterm=underline
    hi DiagnosticDeprecated ctermfg=241 ctermbg=230 cterm=strikethrough
    hi Comment ctermfg=246 ctermbg=NONE cterm=italic
    hi Constant ctermfg=37 ctermbg=NONE cterm=NONE
    hi! link String Constant
    hi! link Number Constant
    hi! link Boolean Constant
    hi! link Character Constant
    hi! link Float Constant
    hi Identifier ctermfg=25 ctermbg=NONE cterm=NONE
    hi! link Function Identifier
    hi Statement ctermfg=136 ctermbg=NONE cterm=NONE
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Keyword Statement
    hi! link Label Statement
    hi! link Exception Statement
    hi! link Operator Statement
    hi PreProc ctermfg=166 ctermbg=NONE cterm=NONE
    hi! link Define PreProc
    hi! link PreCondit PreProc
    hi! link Include PreProc
    hi! link Macro Include
    hi Type ctermfg=64 ctermbg=NONE cterm=NONE
    hi! link Typedef Type
    hi! link StorageClass Type
    hi! link Structure Type
    hi Special ctermfg=160 ctermbg=NONE cterm=NONE
    hi! link SpecialChar Special
    hi! link Delimiter Special
    hi! link SpecialComment Special
    hi! link Debug Special
    hi! link Tag Special
    hi Error ctermfg=160 ctermbg=NONE cterm=bold
    hi Todo ctermfg=169 ctermbg=NONE cterm=bold
    hi Underlined ctermfg=98 ctermbg=NONE cterm=underline
    hi Ignore ctermfg=252 ctermbg=NONE cterm=NONE
    hi VimCommand ctermfg=136 ctermbg=NONE cterm=NONE
    hi RubyDefine ctermfg=239 ctermbg=NONE cterm=bold
    if !s:italics
      hi Comment cterm=NONE
    endif
    if get(g:, 'selenized_green_keywords', 0)
      hi Statement ctermfg=64 ctermbg=NONE cterm=NONE
      hi Type ctermfg=136 ctermbg=NONE cterm=NONE
    endif
    hi Terminal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpellBad ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 16
  if &background ==# 'dark'
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=DarkMagenta ctermbg=NONE cterm=reverse
    hi Search ctermfg=DarkYellow ctermbg=NONE cterm=reverse
    hi! link QuickFixLine Search
    hi Visual ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi MatchParen ctermfg=LightYellow ctermbg=DarkGrey cterm=bold
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi! link lCursor Cursor
    hi CursorLine ctermfg=NONE ctermbg=Black cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=Black cterm=NONE
    hi Folded ctermfg=NONE ctermbg=Black cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi LineNr ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi CursorLineNr ctermfg=White ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=LightGrey ctermbg=LightGrey cterm=NONE
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi StatusLineNC ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi TabLineSel ctermfg=White ctermbg=Black cterm=bold,reverse
    hi TabLine ctermfg=LightGrey ctermbg=NONE cterm=reverse
    hi TabLineFill ctermfg=LightGrey ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarLine ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi Pmenu ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi PmenuSel ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=LightGrey cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi DiffAdd ctermfg=DarkGreen ctermbg=Black cterm=NONE
    hi DiffChange ctermfg=NONE ctermbg=Black cterm=NONE
    hi DiffDelete ctermfg=DarkRed ctermbg=Black cterm=NONE
    hi DiffText ctermfg=Black ctermbg=DarkYellow cterm=NONE
    hi DiagnosticError ctermfg=DarkRed ctermbg=Black cterm=NONE
    hi DiagnosticWarn ctermfg=DarkMagenta ctermbg=Black cterm=NONE
    hi DiagnosticInfo ctermfg=LightBlue ctermbg=Black cterm=NONE
    hi DiagnosticHint ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi DiagnosticOk ctermfg=LightGreen ctermbg=Black cterm=NONE
    hi DiagnosticUnderlineError ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineWarn ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineInfo ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineHint ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineOk ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticDeprecated ctermfg=NONE ctermbg=NONE cterm=strikethrough
    hi Comment ctermfg=LightGrey ctermbg=NONE cterm=italic
    hi Constant ctermfg=DarkCyan ctermbg=NONE cterm=NONE
    hi! link String Constant
    hi! link Number Constant
    hi! link Boolean Constant
    hi! link Character Constant
    hi! link Float Constant
    hi Identifier ctermfg=LightBlue ctermbg=NONE cterm=NONE
    hi! link Function Identifier
    hi Statement ctermfg=LightYellow ctermbg=NONE cterm=NONE
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Keyword Statement
    hi! link Label Statement
    hi! link Exception Statement
    hi! link Operator Statement
    hi PreProc ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
    hi! link Define PreProc
    hi! link PreCondit PreProc
    hi! link Include PreProc
    hi! link Macro Include
    hi Type ctermfg=DarkGreen ctermbg=NONE cterm=NONE
    hi! link Typedef Type
    hi! link StorageClass Type
    hi! link Structure Type
    hi Special ctermfg=DarkRed ctermbg=NONE cterm=NONE
    hi! link SpecialChar Special
    hi! link Delimiter Special
    hi! link SpecialComment Special
    hi! link Debug Special
    hi! link Tag Special
    hi Error ctermfg=DarkRed ctermbg=NONE cterm=bold
    hi Todo ctermfg=DarkMagenta ctermbg=NONE cterm=bold
    hi Underlined ctermfg=LightBlue ctermbg=NONE cterm=underline
    hi Ignore ctermfg=DarkGrey ctermbg=NONE cterm=NONE
    hi VimCommand ctermfg=DarkYellow ctermbg=NONE cterm=NONE
    hi RubyDefine ctermfg=White ctermbg=NONE cterm=bold
    if !s:italics
      hi Comment cterm=NONE
    endif
    if get(g:, 'selenized_green_keywords', 0)
      hi Statement ctermfg=DarkGreen ctermbg=NONE cterm=NONE
      hi Type ctermfg=DarkYellow ctermbg=NONE cterm=NONE
    endif
    hi Terminal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpellBad ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=NONE
  else
    " Light background
    hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi IncSearch ctermfg=DarkMagenta ctermbg=NONE cterm=reverse
    hi Search ctermfg=DarkYellow ctermbg=NONE cterm=reverse
    hi! link QuickFixLine Search
    hi Visual ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi MatchParen ctermfg=LightYellow ctermbg=DarkGrey cterm=bold
    hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
    hi! link lCursor Cursor
    hi CursorLine ctermfg=NONE ctermbg=Black cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=Black cterm=NONE
    hi Folded ctermfg=NONE ctermbg=Black cterm=NONE
    hi ColorColumn ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi LineNr ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi CursorLineNr ctermfg=White ctermbg=NONE cterm=NONE
    hi VertSplit ctermfg=LightGrey ctermbg=LightGrey cterm=NONE
    hi StatusLine ctermfg=NONE ctermbg=NONE cterm=reverse
    hi StatusLineNC ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi! link StatusLineTerm StatusLine
    hi! link StatusLineTermNC StatusLineNC
    hi TabLineSel ctermfg=White ctermbg=Black cterm=bold,reverse
    hi TabLine ctermfg=LightGrey ctermbg=NONE cterm=reverse
    hi TabLineFill ctermfg=LightGrey ctermbg=NONE cterm=reverse
    hi ToolbarButton ctermfg=NONE ctermbg=NONE cterm=reverse
    hi ToolbarLine ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi Pmenu ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi PmenuSel ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi PmenuThumb ctermfg=NONE ctermbg=LightGrey cterm=NONE
    hi PmenuSbar ctermfg=NONE ctermbg=DarkGrey cterm=NONE
    hi DiffAdd ctermfg=DarkGreen ctermbg=Black cterm=NONE
    hi DiffChange ctermfg=NONE ctermbg=Black cterm=NONE
    hi DiffDelete ctermfg=DarkRed ctermbg=Black cterm=NONE
    hi DiffText ctermfg=Black ctermbg=DarkYellow cterm=NONE
    hi DiagnosticError ctermfg=DarkRed ctermbg=Black cterm=NONE
    hi DiagnosticWarn ctermfg=DarkMagenta ctermbg=Black cterm=NONE
    hi DiagnosticInfo ctermfg=LightBlue ctermbg=Black cterm=NONE
    hi DiagnosticHint ctermfg=LightGrey ctermbg=Black cterm=NONE
    hi DiagnosticOk ctermfg=LightGreen ctermbg=Black cterm=NONE
    hi DiagnosticUnderlineError ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineWarn ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineInfo ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineHint ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticUnderlineOk ctermfg=NONE ctermbg=NONE cterm=underline
    hi DiagnosticDeprecated ctermfg=NONE ctermbg=NONE cterm=strikethrough
    hi Comment ctermfg=LightGrey ctermbg=NONE cterm=italic
    hi Constant ctermfg=DarkCyan ctermbg=NONE cterm=NONE
    hi! link String Constant
    hi! link Number Constant
    hi! link Boolean Constant
    hi! link Character Constant
    hi! link Float Constant
    hi Identifier ctermfg=LightBlue ctermbg=NONE cterm=NONE
    hi! link Function Identifier
    hi Statement ctermfg=LightYellow ctermbg=NONE cterm=NONE
    hi! link Conditional Statement
    hi! link Repeat Statement
    hi! link Keyword Statement
    hi! link Label Statement
    hi! link Exception Statement
    hi! link Operator Statement
    hi PreProc ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
    hi! link Define PreProc
    hi! link PreCondit PreProc
    hi! link Include PreProc
    hi! link Macro Include
    hi Type ctermfg=DarkGreen ctermbg=NONE cterm=NONE
    hi! link Typedef Type
    hi! link StorageClass Type
    hi! link Structure Type
    hi Special ctermfg=DarkRed ctermbg=NONE cterm=NONE
    hi! link SpecialChar Special
    hi! link Delimiter Special
    hi! link SpecialComment Special
    hi! link Debug Special
    hi! link Tag Special
    hi Error ctermfg=DarkRed ctermbg=NONE cterm=bold
    hi Todo ctermfg=DarkMagenta ctermbg=NONE cterm=bold
    hi Underlined ctermfg=LightBlue ctermbg=NONE cterm=underline
    hi Ignore ctermfg=DarkGrey ctermbg=NONE cterm=NONE
    hi VimCommand ctermfg=DarkYellow ctermbg=NONE cterm=NONE
    hi RubyDefine ctermfg=White ctermbg=NONE cterm=bold
    if !s:italics
      hi Comment cterm=NONE
    endif
    if get(g:, 'selenized_green_keywords', 0)
      hi Statement ctermfg=DarkGreen ctermbg=NONE cterm=NONE
      hi Type ctermfg=DarkYellow ctermbg=NONE cterm=NONE
    endif
    hi Terminal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE
    hi EndOfBuffer ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi MoreMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
    hi Question ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpecialKey ctermfg=NONE ctermbg=NONE cterm=NONE
    hi SpellBad ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=underline
    hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline
    hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
    hi VisualNOS ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE
    hi WildMenu ctermfg=NONE ctermbg=NONE cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: bg_0          #103c48      237        none
" Color: bg_1          #184956      238        Black
" Color: bg_2          #2d5b69      240        DarkGrey
" Color: dim_0         #72898f      245        LightGrey
" Color: fg_0          #adbcbc      250        none
" Color: fg_1          #cad8d9      252        White
" Color: red           #fa5750        ~        DarkRed
" Color: green         #75b938        ~        DarkGreen
" Color: yellow        #dbb32d        ~        DarkYellow
" Color: blue          #4695f7       33        DarkBlue
" Color: magenta       #f275be        ~        DarkMagenta
" Color: cyan          #41c7b9        ~        DarkCyan
" Color: br_red        #ff665c        ~        LightRed
" Color: br_green      #84c747        ~        LightGreen
" Color: br_yellow     #ebc13d        ~        LightYellow
" Color: br_blue       #58a3ff       39        LightBlue
" Color: br_magenta    #ff84cd        ~        LightMagenta
" Color: br_cyan       #53d6c7        ~        LightCyan
" Color: orange        #ed8649        ~        DarkMagenta
" Color: violet        #af88eb        ~        LightBlue
" Color: br_orange     #fd9456        ~        LightMagenta
" Color: br_violet     #bd96fa        ~        LightBlue
" Term colors: bg_1 red    green    yellow    blue    magenta    cyan    dim_0
" Term colors: bg_2 br_red br_green br_yellow br_blue br_magenta br_cyan fg_1
" Background: light
" Color: bg_0          #fbf3db        ~        none
" Color: bg_1          #e9e4d0        ~        Black
" Color: bg_2          #cfcebe        ~        DarkGrey
" Color: dim_0         #909995        ~        LightGrey
" Color: fg_0          #53676d        ~        none
" Color: fg_1          #3a4d53        ~        White
" Color: red           #d2212d        ~        DarkRed
" Color: green         #489100        ~        DarkGreen
" Color: yellow        #ad8900        ~        DarkYellow
" Color: blue          #0072d4        ~        DarkBlue
" Color: magenta       #ca4898        ~        DarkMagenta
" Color: cyan          #009c8f        ~        DarkCyan
" Color: br_red        #cc1729        ~        LightRed
" Color: br_green      #428b00        ~        LightGreen
" Color: br_yellow     #a78300        ~        LightYellow
" Color: br_blue       #006dce        ~        LightBlue
" Color: br_magenta    #c44392        ~        LightMagenta
" Color: br_cyan       #00978a        ~        LightCyan
" Color: orange        #c25d1e        ~        DarkMagenta
" Color: violet        #8762c6        ~        LightBlue
" Color: br_orange     #bc5819        ~        LightMagenta
" Color: br_violet     #825dc0        ~        LightBlue
" Term colors: bg_1 red    green    yellow    blue    magenta    cyan    dim_0
" Term colors: bg_2 br_red br_green br_yellow br_blue br_magenta br_cyan fg_1
" vim: et ts=8 sw=2 sts=2