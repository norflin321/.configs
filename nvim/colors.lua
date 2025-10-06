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

local colors = {
	fg_normal = "#9ea3c0",
	bg_normal = "#252737",
	bg_1 = "#1f202e",
	bg_2 = "#33364d",
	bg_3 = "#3b3e59",
	bg_4 = "#696c96",
	bg_5 = "#434765",
	red = "#ac8b83",
	func = "#929be5",
	keyword = "#8087ac",
	primitive = "#73c1a9",
	comment = "#545d8c",
}

-- syntax
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg_normal, bg = colors.bg_normal })
vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.bg_4 })
vim.api.nvim_set_hl(0, "NonText", { fg = colors.bg_normal, bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.bg_normal, bg = "NONE" })
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Cursor", { fg = colors.bg_normal, bg = colors.fg_normal })
vim.api.nvim_set_hl(0, "CursorIM", { fg = colors.bg_normal, bg = colors.fg_normal })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.comment })
vim.api.nvim_set_hl(0, "Conceal", { fg = colors.red, bg = colors.bg_normal })
vim.api.nvim_set_hl(0, "Folded", { fg = colors.bg_4, bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.bg_2 })
vim.api.nvim_set_hl(0, "MatchParen", { bg = colors.bg_3 })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.red })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "String", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "Label", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "Number", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "Title", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.red })
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.red })
vim.api.nvim_set_hl(0, "Exception", { fg = colors.red })
vim.api.nvim_set_hl(0, "Type", { fg = colors.red })
vim.api.nvim_set_hl(0, "TypeDef", { fg = colors.red })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "Special", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Error", { fg = colors.red, bg = colors.bg_normal, bold = true })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "Todo", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "Question", { fg = colors.primitive, bold = true })
vim.api.nvim_set_hl(0, "SpellBad", { fg = colors.red, underline = true })
vim.api.nvim_set_hl(0, "SpellCap", { underline = true })
vim.api.nvim_set_hl(0, "SpellLocal", { fg = colors.red, underline = true })
vim.api.nvim_set_hl(0, "SpellRare", { fg = colors.red, underline = true })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = colors.primitive, bold = true })
vim.api.nvim_set_hl(0, "DiffChange", { bg = colors.func, bold = true })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = colors.fg_normal, bg = colors.keyword, bold = true })
vim.api.nvim_set_hl(0, "DiffText", { bg = colors.primitive })
vim.api.nvim_set_hl(0, "QuickFixLine", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "htmlTag", { fg = colors.bg_4 })
vim.api.nvim_set_hl(0, "htmlEndTag", { fg = colors.bg_4 })
vim.api.nvim_set_hl(0, "htmlSpecialTagName", { fg = colors.red })
vim.api.nvim_set_hl(0, "htmlArg", { fg = colors.bg_4 })
vim.api.nvim_set_hl(0, "jsonQuote", { fg = colors.bg_4 })
vim.api.nvim_set_hl(0, "NullLsInfoBorder", { fg = colors.comment, bg = colors.bg_normal })
vim.api.nvim_set_hl(0, "typescriptImport", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "typescriptDocRef", { fg = colors.comment, underline = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.fg_normal, bg = colors.bg_normal, bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { underline = true })
vim.api.nvim_set_hl(0, "CtrlPMatch", { fg = colors.fg_normal, underline = true })

-- diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = colors.red, bg = colors.bg_1 })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { fg = colors.red, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { fg = colors.red, underline = true })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = colors.comment, bold = true })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.comment, bold = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true })

-- nvim-tree and aerial
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = colors.bg_3 })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = colors.func })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = colors.func, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = colors.func })
vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { fg = colors.func })
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = colors.comment })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = colors.func })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFile", { fg = colors.bg_4 })
vim.api.nvim_set_hl(0, "AerialLine", { bg = colors.bg_3 })
vim.api.nvim_set_hl(0, "AerialNormal", { fg = colors.func })

-- search
vim.api.nvim_set_hl(0, "Search", { fg = colors.bg_normal, bg = colors.bg_4 })
vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg_normal, bg = colors.bg_4 })
vim.api.nvim_set_hl(0, "CurSearch", { fg = colors.bg_normal, bg = colors.bg_4 })
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.bg_3 })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.bg_3 })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.bg_3 })

-- popups
vim.api.nvim_set_hl(0, "Pmenu", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.bg_3 })
vim.api.nvim_set_hl(0, "PmenuSbar", { fg = colors.bg_2, bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "PmenuThumb", { fg = colors.bg_2, bg = colors.bg_5 })
vim.api.nvim_set_hl(0, "Float", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = colors.func, bg = colors.bg_normal })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.bg_2, bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "WildMenu", { fg = colors.bg_normal, bg = colors.bg_2 })

-- statusline and gutter
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.bg_4, bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.bg_4, bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.bg_2, bg = colors.bg_2 })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.comment })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.bg_1, bg = colors.bg_1 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.bg_1 })

vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.bg_3 })
vim.api.nvim_set_hl(0, "ScrollbarHandle", { fg = colors.bg_3 })
vim.api.nvim_set_hl(0, "ScrollbarMarkSearch", { fg = colors.bg_4 })

-- tree-sitter
vim.api.nvim_set_hl(0, "@string", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "@number", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "@string.regex", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@text.title", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "@text.reference", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@text.uri", { fg = colors.comment })
vim.api.nvim_set_hl(0, "@text.strong", { bold = true })
vim.api.nvim_set_hl(0, "@text.literal", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "@parameter", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@property", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@keyword", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "@type", { fg = colors.red })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.red })
vim.api.nvim_set_hl(0, "@include", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@variable", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.red })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.primitive })
vim.api.nvim_set_hl(0, "@constant", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@tag", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.fg_normal })
vim.api.nvim_set_hl(0, "@function", { fg = colors.func, bold = true })
vim.api.nvim_set_hl(0, "@function.method", { fg = colors.func, bold = true })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.func })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = colors.func })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.func })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.func })
vim.api.nvim_set_hl(0, "@constructor", { fg = colors.func })
