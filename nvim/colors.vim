let g:colors_name = "colors"

" colors
let s:fg_normal      = "#9ea3c0"
let s:bg_normal      = "#252737"
let s:bg_dark        = "#1f202e"
let s:bg_light       = "#2a2c3f"
let s:bg_highlight_1 = "#33364d"
let s:bg_highlight_2 = "#787ca1"
let s:bg_highlight_3 = "#393c56"
let s:type           = "#ac8b83"
let s:function       = "#929be5"
let s:keyword        = "#8087ac"
let s:primitive      = "#73c1a9"
let s:comment        = "#505886"
let s:error          = "#b18181"

" syntax
exec "hi Normal guifg=".s:fg_normal." guibg=".s:bg_normal
exec "hi Delimiter guifg=".s:bg_highlight_2
exec "hi NonText guifg=".s:bg_normal." guibg=NONE"
exec "hi EndOfBuffer guifg=".s:bg_normal." guibg=NONE gui=NONE"
exec "hi Comment guifg=".s:comment." gui=NONE"
exec "hi Cursor guifg=".s:bg_normal." guibg=".s:fg_normal
exec "hi CursorIM guifg=".s:bg_normal." guibg=".s:fg_normal
exec "hi ColorColumn guibg=".s:bg_light." gui=NONE"
exec "hi CursorColumn guibg=".s:bg_light." gui=NONE"
exec "hi CursorLine guibg=".s:bg_light." gui=NONE"
exec "hi CursorLineNr guifg=".s:comment." guibg=NONE gui=NONE"
exec "hi Conceal guifg=".s:type." guibg=".s:bg_normal." gui=NONE"
exec "hi Folded guifg=".s:bg_highlight_2." guibg=".s:bg_highlight_1." gui=NONE"
exec "hi FoldColumn guifg=".s:bg_highlight_1." guibg=NONE gui=NONE"
exec "hi MatchParen guibg=".s:bg_highlight_3
exec "hi Directory guifg=".s:type
exec "hi Underlined gui=underline"
exec "hi String guifg=".s:primitive
exec "hi Statement guifg=".s:fg_normal." gui=NONE"
exec "hi Label guifg=".s:fg_normal." gui=NONE"
exec "hi Constant guifg=".s:primitive
exec "hi Boolean guifg=".s:primitive
exec "hi Number guifg=".s:primitive
exec "hi Title guifg=".s:type." gui=bold"
exec "hi Keyword guifg=".s:type
exec "hi Identifier guifg=".s:type
exec "hi Exception guifg=".s:type
exec "hi Type guifg=".s:type." gui=NONE"
exec "hi TypeDef guifg=".s:type." gui=NONE"
exec "hi PreProc guifg=".s:fg_normal
exec "hi Special guifg=".s:keyword
exec "hi SpecialKey guifg=".s:keyword
exec "hi SpecialChar guifg=".s:keyword
exec "hi SpecialComment guifg=".s:keyword
exec "hi Error guifg=".s:error." guibg=".s:bg_normal." gui=bold"
exec "hi ErrorMsg guifg=".s:error." guibg=NONE gui=bold"
exec "hi WarningMsg guifg=".s:type." gui=bold"
exec "hi MoreMsg guifg=".s:primitive
exec "hi Todo guifg=".s:type." guibg=NONE gui=bold"
exec "hi Visual guibg=".s:bg_highlight_1." gui=NONE"
exec "hi Question guifg=".s:primitive." gui=bold"
exec "hi SpellBad guifg=".s:error." gui=underline"
exec "hi SpellCap gui=underline"
exec "hi SpellLocal guifg=".s:error." gui=underline"
exec "hi SpellRare guifg=".s:type." gui=underline"
exec "hi DiffAdd guibg=".s:primitive." gui=bold"
exec "hi DiffChange guibg=".s:function." gui=bold"
exec "hi DiffDelete guifg=".s:fg_normal." guibg=".s:keyword." gui=bold"
exec "hi DiffText guibg=".s:primitive." gui=NONE"
exec "hi QuickFixLine guifg=NONE"." guibg=".s:bg_light
exec "hi htmlTag guifg=".s:bg_highlight_2
exec "hi htmlEndTag guifg=".s:bg_highlight_2
exec "hi htmlSpecialTagName guifg=".s:type
exec "hi htmlArg guifg=".s:bg_highlight_2
exec "hi jsonQuote guifg=".s:bg_highlight_2
exec "hi NullLsInfoBorder guifg=".s:comment." guibg=".s:bg_normal." gui=NONE"
exec "hi typecriptImport guifg=".s:fg_normal
exec "hi typecriptDocRef guifg=".s:comment." gui=underline"

" diagnostics
exec "hi DiagnosticError guifg=".s:error
exec "hi DiagnosticVirtualTextError guifg=".s:error." gui=NONE guibg=".s:bg_dark
exec "hi DiagnosticUnderlineError guifg=".s:error." gui=underline"
exec "hi DiagnosticWarn guifg=".s:type
exec "hi DiagnosticVirtualTextWarn guifg=".s:type." gui=bold"
exec "hi DiagnosticUnderlineWarn guifg=".s:type." gui=underline"
exec "hi DiagnosticInfo guifg=".s:fg_normal
exec "hi DiagnosticVirtualTextInfo guifg=".s:comment." gui=bold"
exec "hi DiagnosticUnderlineInfo gui=NONE"
exec "hi DiagnosticHint guifg=".s:fg_normal
exec "hi DiagnosticVirtualTextHint guifg=".s:comment." gui=bold"
exec "hi DiagnosticUnderlineHint gui=underline"

" nvim-tree and aerial
exec "hi NvimTreeNormal guifg=NONE guibg=".s:bg_highlight_1
exec "hi NvimTreeCursorLine guifg=NONE guibg=#3b3e59"
exec "hi NvimTreeFolderName guifg=".s:function." gui=NONE"
exec "hi NvimTreeRootFolder guifg=".s:function." gui=bold"
exec "hi NvimTreeFolderIcon guifg=".s:function." gui=NONE"
exec "hi NvimTreeFileIcon guifg=".s:function." gui=NONE"
exec "hi NvimTreeEmptyFolderName guifg=".s:comment." gui=NONE"
exec "hi NvimTreeOpenedFolderName guifg=".s:function." gui=NONE"
exec "hi NvimTreeOpenedFile guifg=".s:bg_highlight_2." gui=NONE"
exec "hi AerialLine guifg=NONE guibg=#3b3e59"
exec "hi AerialNormal guifg=".s:function." gui=NONE"

" search
exec "hi Search guifg=".s:bg_normal." guibg=".s:bg_highlight_2
exec "hi IncSearch guifg=".s:bg_normal." guibg=".s:bg_highlight_2
exec "hi CurSearch guifg=".s:bg_normal." guibg="."#ffff00"
exec "hi LspReferenceText guifg=NONE guibg=".s:bg_highlight_3
exec "hi LspReferenceRead guifg=NONE guibg=".s:bg_highlight_3
exec "hi LspReferenceWrite guifg=NONE guibg=".s:bg_highlight_3

" popups
exec "hi Pmenu guifg=NONE guibg=".s:bg_highlight_1
exec "hi PmenuSel guifg=NONE guibg=#3b3e59 gui=NONE"
exec "hi PmenuSbar guifg=".s:bg_highlight_1." guibg=".s:bg_highlight_1
exec "hi PmenuThumb guifg=".s:bg_highlight_1." guibg=#434765"

exec "hi Float guifg=".s:primitive
exec "hi FloatTitle guifg=".s:function." guibg=".s:bg_normal." gui=NONE"
exec "hi FloatBorder guifg=".s:bg_highlight_1." guibg=".s:bg_highlight_1." gui=NONE"
exec "hi FloatThumb guifg=".s:bg_highlight_1." guibg=#434765 gui=NONE"
exec "hi FloatScroll guifg=".s:bg_highlight_1." guibg=".s:bg_highlight_1." gui=NONE"
exec "hi NormalFloat guibg=".s:bg_highlight_1." gui=NONE"
exec "hi WildMenu guifg=".s:bg_normal." guibg=".s:bg_light

" statusline and gutter
exec "hi StatusLine guifg=".s:comment." guibg=".s:bg_dark." gui=NONE"
exec "hi StatusLineNC guifg=".s:comment." guibg=".s:bg_dark." gui=NONE"
exec "hi SignColumn guifg=".s:bg_light." guibg=".s:bg_light
exec "hi LineNr guifg=".s:comment." guibg=NONE"
exec "hi VertSplit guifg=".s:bg_dark." guibg=".s:bg_dark." gui=NONE"
exec "hi WinSeparator guifg=".s:bg_dark." guibg=NONE gui=NONE"

" tree-sitter
exec "hi @string guifg=".s:primitive
exec "hi @number guifg=".s:primitive
exec "hi @string.regex guifg=".s:primitive
exec "hi @string.escape guifg=".s:keyword
exec "hi @text.title guifg=".s:type." gui=bold"
exec "hi @text.reference guifg=".s:fg_normal
exec "hi @text.uri guifg=".s:comment
exec "hi @text.strong gui=bold"
exec "hi @text.literal guifg=".s:primitive
exec "hi @parameter guifg=".s:fg_normal
exec "hi @property guifg=".s:fg_normal
exec "hi @keyword guifg=".s:keyword
exec "hi @type guifg=".s:type
exec "hi @type.builtin guifg=".s:type
exec "hi @include guifg=".s:fg_normal
exec "hi @variable guifg=".s:fg_normal
exec "hi @variable.member guifg=".s:fg_normal
exec "hi @operator guifg=".s:fg_normal
exec "hi @variable.builtin guifg=".s:type
exec "hi @constant.builtin guifg=".s:primitive
exec "hi @constant guifg=".s:fg_normal
exec "hi @tag guifg=".s:fg_normal
exec "hi @tag.delimiter guifg=".s:fg_normal
exec "hi @tag.attribute guifg=".s:fg_normal
exec "hi @function guifg=".s:function." gui=bold"
exec "hi @function.method guifg=".s:function." gui=bold"
exec "hi @function.call guifg=".s:function." gui=NONE"
exec "hi @function.method.call guifg=".s:function." gui=NONE"
exec "hi @function.macro guifg=".s:function." gui=NONE"
exec "hi @function.builtin guifg=".s:function." gui=NONE"
exec "hi @constructor guifg=".s:function." gui=NONE"
