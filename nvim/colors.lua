vim.g.colors_name = "colors"

function hex_to_hsl(hex)
	hex = hex:gsub("#", "")
	local r = tonumber(hex:sub(1, 2), 16) / 255
	local g = tonumber(hex:sub(3, 4), 16) / 255
	local b = tonumber(hex:sub(5, 6), 16) / 255
	local max = math.max(r, g, b)
	local min = math.min(r, g, b)
	local h, s, l = 0, 0, (max + min) / 2
	if max == min then
		h, s = 0, 0
	else
		local d = max - min
		s = l > 0.5 and d / (2 - max - min) or d / (max + min)
		if max == r then
			h = (g - b) / d + (g < b and 6 or 0)
		elseif max == g then
			h = (b - r) / d + 2
		elseif max == b then
			h = (r - g) / d + 4
		end
		h = h / 6
	end
	h = math.floor(h * 360 + 0.5)
	s = math.floor(s * 100 + 0.5)
	l = math.floor(l * 100 + 0.5)
	return h, s, l
end

function hsl_to_hex(h, s, l)
	h = h/360
	s = s/100
	l = l/100
	local r, g, b
	if s == 0 then
		r, g, b = l, l, l
	else
		local function hue_to_rgb(p, q, t)
			if t < 0 then t = t + 1 end
			if t > 1 then t = t - 1 end
			if t < 1/6 then return p + (q - p) * 6 * t end
			if t < 1/2 then return q end
			if t < 2/3 then return p + (q - p) * (2/3 - t) * 6 end
			return p
		end
		local q = l < 0.5 and l * (1 + s) or l + s - l * s
		local p = 2 * l - q
		r = hue_to_rgb(p, q, h + 1/3)
		g = hue_to_rgb(p, q, h)
		b = hue_to_rgb(p, q, h - 1/3)
	end
	r = math.floor(r * 255 + 0.5)
	g = math.floor(g * 255 + 0.5)
	b = math.floor(b * 255 + 0.5)
	return string.format("#%02X%02X%02X", r, g, b)
end

function hex_add_lightness(hex, lightness)
	local h, s, l = hex_to_hsl(hex)
	hex = hsl_to_hex(h, s, l + lightness)
	return hex
end

local fg = "#9ea3c0"
local bg = "#252737"
local bg_1 = hex_add_lightness(bg, 7) -- #33364d
local bg_2 = hex_add_lightness(bg, 11) -- #3b3f59
local bg_3 = hex_add_lightness(bg, 15) -- #434865
local bg_4 = hex_add_lightness(bg, 32) -- #666c99
local err = "#b18181"
local type = "#ac8b83"
local func = "#929be5"
local keyword = "#8087ac"
local primitive = "#73c1a9"
local comment = "#545d8c"

-- syntax
vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "Delimiter", { fg = bg_4 })
vim.api.nvim_set_hl(0, "NonText", { fg = bg, bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = bg, bg = "NONE" })
vim.api.nvim_set_hl(0, "Comment", { fg = comment })
vim.api.nvim_set_hl(0, "Cursor", { fg = bg, bg = fg })
vim.api.nvim_set_hl(0, "CursorIM", { fg = bg, bg = fg })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = bg_1 })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = bg_1 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = bg_1 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = comment })
vim.api.nvim_set_hl(0, "Conceal", { fg = type, bg = bg })
vim.api.nvim_set_hl(0, "Folded", { fg = bg_4, bg = bg_1 })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = bg_1 })
vim.api.nvim_set_hl(0, "MatchParen", { bg = bg_2 })
vim.api.nvim_set_hl(0, "Directory", { fg = type })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Statement", { fg = fg })
vim.api.nvim_set_hl(0, "Label", { fg = fg })
vim.api.nvim_set_hl(0, "String", { fg = primitive })
vim.api.nvim_set_hl(0, "Constant", { fg = primitive })
vim.api.nvim_set_hl(0, "Boolean", { fg = primitive })
vim.api.nvim_set_hl(0, "Number", { fg = primitive })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = primitive })
vim.api.nvim_set_hl(0, "Question", { fg = primitive, bold = true })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = primitive, bold = true })
vim.api.nvim_set_hl(0, "DiffText", { bg = type })
vim.api.nvim_set_hl(0, "Title", { fg = type, bold = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = keyword })
vim.api.nvim_set_hl(0, "Identifier", { fg = type })
vim.api.nvim_set_hl(0, "Exception", { fg = type })
vim.api.nvim_set_hl(0, "Type", { fg = type })
vim.api.nvim_set_hl(0, "TypeDef", { fg = type })
vim.api.nvim_set_hl(0, "PreProc", { fg = fg })
vim.api.nvim_set_hl(0, "Special", { fg = keyword })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = keyword })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = keyword })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = keyword })
vim.api.nvim_set_hl(0, "Error", { fg = err, bg = bg, bold = true })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = err, bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = type, bold = true })
vim.api.nvim_set_hl(0, "Todo", { fg = type, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = bg_1 })
vim.api.nvim_set_hl(0, "SpellBad", { fg = err, underline = true })
vim.api.nvim_set_hl(0, "SpellCap", { underline = true })
vim.api.nvim_set_hl(0, "SpellLocal", { fg = err, underline = true })
vim.api.nvim_set_hl(0, "SpellRare", { fg = type, underline = true })
vim.api.nvim_set_hl(0, "DiffChange", { bg = func, bold = true })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = fg, bg = type, bold = true })
vim.api.nvim_set_hl(0, "QuickFixLine", { bg = bg_1 })
vim.api.nvim_set_hl(0, "htmlTag", { fg = bg_4 })
vim.api.nvim_set_hl(0, "htmlEndTag", { fg = bg_4 })
vim.api.nvim_set_hl(0, "htmlSpecialTagName", { fg = type })
vim.api.nvim_set_hl(0, "htmlArg", { fg = bg_4 })
vim.api.nvim_set_hl(0, "jsonQuote", { fg = bg_4 })
vim.api.nvim_set_hl(0, "NullLsInfoBorder", { fg = comment, bg = bg })
vim.api.nvim_set_hl(0, "typescriptImport", { fg = fg })
vim.api.nvim_set_hl(0, "typescriptDocRef", { fg = comment, underline = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = fg, bg = bg, bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { underline = true })
vim.api.nvim_set_hl(0, "CtrlPMatch", { fg = fg, underline = true })

-- diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = err })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = err, bg = bg_1 })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = err, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = type })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = type, bold = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { fg = type, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = fg })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = comment, bold = true })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = fg })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = comment, bold = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true })

-- nvim-tree and aerial
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = bg_1 })
vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = bg_2 })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = func })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = func, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = func })
vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { fg = func })
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = comment })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = func })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFile", { fg = bg_4 })
vim.api.nvim_set_hl(0, "AerialLine", { bg = bg_2 })
vim.api.nvim_set_hl(0, "AerialNormal", { fg = func })

-- search
vim.api.nvim_set_hl(0, "Search", { fg = bg, bg = bg_4 })
vim.api.nvim_set_hl(0, "IncSearch", { fg = bg, bg = bg_4 })
vim.api.nvim_set_hl(0, "CurSearch", { fg = bg, bg = bg_4 })
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = bg_2 })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = bg_2 })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = bg_2 })

-- popups
vim.api.nvim_set_hl(0, "Pmenu", { bg = bg_1 })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = bg_2 })
vim.api.nvim_set_hl(0, "PmenuSbar", { fg = bg_1, bg = bg_1 })
vim.api.nvim_set_hl(0, "PmenuThumb", { fg = bg_1, bg = bg_3 })
vim.api.nvim_set_hl(0, "Float", { fg = fg })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = func, bg = bg })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = bg_1, bg = bg_1 })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg_1 })
vim.api.nvim_set_hl(0, "WildMenu", { fg = bg, bg = bg_1 })

-- statusline and gutter
vim.api.nvim_set_hl(0, "StatusLine", { fg = bg_4, bg = bg_1 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = bg_4, bg = bg_1 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = bg_1, bg = bg_1 })
vim.api.nvim_set_hl(0, "LineNr", { fg = bg_3 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = bg_1, bg = bg_1 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = bg_1 })

vim.api.nvim_set_hl(0, "IblIndent", { fg = bg_2 })
vim.api.nvim_set_hl(0, "ScrollbarHandle", { bg = bg_2 })
vim.api.nvim_set_hl(0, "ScrollbarMarkSearch", { fg = bg_4 })

-- tree-sitter
vim.api.nvim_set_hl(0, "@string", { fg = primitive })
vim.api.nvim_set_hl(0, "@number", { fg = primitive })
vim.api.nvim_set_hl(0, "@string.regex", { fg = primitive })
vim.api.nvim_set_hl(0, "@text.literal", { fg = primitive })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = primitive })
vim.api.nvim_set_hl(0, "@string.escape", { fg = keyword })
vim.api.nvim_set_hl(0, "@text.title", { fg = type, bold = true })
vim.api.nvim_set_hl(0, "@text.reference", { fg = fg })
vim.api.nvim_set_hl(0, "@text.uri", { fg = comment })
vim.api.nvim_set_hl(0, "@text.strong", { bold = true })
vim.api.nvim_set_hl(0, "@parameter", { fg = fg })
vim.api.nvim_set_hl(0, "@property", { fg = fg })
vim.api.nvim_set_hl(0, "@keyword", { fg = keyword })
vim.api.nvim_set_hl(0, "@type", { fg = type })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = type })
vim.api.nvim_set_hl(0, "@include", { fg = fg })
vim.api.nvim_set_hl(0, "@variable", { fg = fg })
vim.api.nvim_set_hl(0, "@variable.member", { fg = fg })
vim.api.nvim_set_hl(0, "@operator", { fg = fg })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = type })
vim.api.nvim_set_hl(0, "@constant", { fg = fg })
vim.api.nvim_set_hl(0, "@tag", { fg = fg })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = fg })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = fg })
vim.api.nvim_set_hl(0, "@function", { fg = func, bold = true })
vim.api.nvim_set_hl(0, "@function.method", { fg = func, bold = true })
vim.api.nvim_set_hl(0, "@function.call", { fg = func })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = func })
vim.api.nvim_set_hl(0, "@function.macro", { fg = func })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = func })
vim.api.nvim_set_hl(0, "@constructor", { fg = func })
