-- Skeptic for Neovim
-- Colorscheme built on aether.nvim, reproducing the highlight groups of
-- naysayer-theme.el (https://github.com/nickav/naysayer-theme.el), the Emacs
-- theme inspired by Jonathan Blow's compiler livestreams.
--
-- Skeptic is the Omarchy desktop theme of the same name:
-- https://github.com/SaifOmar/omarchy-skeptic-theme

require("aether").load({
	name = "skeptic",

	colors = {
		bg = "#062329",
		dark_bg = "#051e23",
		darker_bg = "#041a1d",
		lighter_bg = "#0b3335",

		fg = "#d1b897",
		dark_fg = "#8a7f6a",
		light_fg = "#e6d9c3",
		bright_fg = "#ffffff",
		muted = "#126367",

		red = "#ff0000",
		yellow = "#E6DB74",
		orange = "#FD971F",
		green = "#44b340",
		cyan = "#2ec09c",
		blue = "#66D9EF",
		magenta = "#FD5FF0",
		brown = "#7b5b55",

		bright_red = "#ff3333",
		bright_yellow = "#f0e68c",
		bright_green = "#6ad966",
		bright_cyan = "#5dd9c4",
		bright_blue = "#8ae7f2",
		bright_magenta = "#fe8af5",

		accent = "#d1b897",
		cursor = "#ffffff",
		foreground = "#d1b897",
		background = "#062329",
		selection = "#0000ff",
		selection_foreground = "#ffffff",
		selection_background = "#0000ff",
	},

	on_colors = function(c)
		c.comment = "#44b340"
		c.fg_gutter = "#126367"
		c.dark3 = "#126367"
		c.fg_dark = "#d1b897"
		c.dark5 = "#d1b897"
		c.bg_highlight = "#0b3335"
		c.cursorline_bg = "#0b3335"
		c.bg_visual = "#0000ff"
		c.bg_search = "#0000ff"
		c.error = "#ff0000"
		c.warning = "#ffaa00"
		c.hint = "#8cde94"
		c.info = "#2ec09c"
	end,

	on_highlights = function(hl, colors)
		local C = {
			bg = colors.background,
			bg_highlight = "#0b3335",
			fg = "#d1b897",
			comment = "#44b340",
			string = "#2ec09c",
			constant = "#7ad0c6",
			keyword = "#ffffff",
			type = "#8cde94",
			variable = "#c1d1e3",
			selection = "#0000ff",
			cursor = "#ffffff",
			gutter = "#126367",
			error = "#ff0000",
			warning = "#ffaa00",
			yellow = "#E6DB74",
		}

		local function set(name, def)
			hl[name] = def
		end

		-- UI
		set("Cursor", { fg = C.bg, bg = C.cursor })
		set("lCursor", { fg = C.bg, bg = C.cursor })
		set("CursorIM", { fg = C.bg, bg = C.cursor })
		set("Visual", { bg = C.selection })
		set("VisualNOS", { bg = C.selection })
		set("Search", { bg = C.selection, fg = C.keyword })
		set("IncSearch", { bg = C.yellow, fg = C.bg })
		set("LineNr", { fg = C.gutter })
		set("LineNrAbove", { fg = C.gutter })
		set("LineNrBelow", { fg = C.gutter })
		set("CursorLineNr", { fg = C.cursor })
		set("CursorLine", { bg = C.bg_highlight })
		set("CursorColumn", { bg = C.bg_highlight })
		set("ColorColumn", { bg = C.bg_highlight })
		set("StatusLine", { fg = C.fg, bg = C.bg })
		set("StatusLineNC", { fg = C.gutter, bg = C.bg })
		set("TabLine", { fg = C.fg, bg = C.bg })
		set("TabLineFill", { bg = C.bg })
		set("TabLineSel", { fg = C.bg, bg = C.fg })
		set("WinBar", { fg = C.fg, bg = C.bg, bold = true })
		set("WinBarNC", { fg = C.gutter, bg = C.bg })
		set("WinSeparator", { fg = C.gutter })
		set("VertSplit", { fg = C.gutter })
		set("Folded", { fg = C.comment, bg = C.bg })
		set("FoldColumn", { fg = C.comment })
		set("SignColumn", { fg = C.gutter })
		set("Pmenu", { fg = C.fg, bg = C.bg })
		set("PmenuSel", { fg = C.keyword, bg = C.selection })
		set("PmenuSbar", { bg = C.bg_highlight })
		set("PmenuThumb", { bg = C.gutter })
		set("MatchParen", { fg = C.keyword, bold = true })
		set("ErrorMsg", { fg = C.error, bold = true })
		set("WarningMsg", { fg = C.warning, bold = true })
		set("MoreMsg", { fg = C.string })
		set("Question", { fg = C.string })
		set("Directory", { fg = C.string })
		set("Title", { fg = C.keyword, bold = true })
		set("NonText", { fg = C.gutter })
		set("Whitespace", { fg = C.gutter })
		set("SpecialKey", { fg = C.gutter })
		set("QuickFixLine", { bg = C.selection, fg = C.keyword })

		-- Diagnostics
		set("DiagnosticError", { fg = C.error })
		set("DiagnosticWarn", { fg = C.warning })
		set("DiagnosticInfo", { fg = C.string })
		set("DiagnosticHint", { fg = C.type })
		set("DiagnosticUnderlineError", { undercurl = true, sp = C.error })
		set("DiagnosticUnderlineWarn", { undercurl = true, sp = C.warning })
		set("DiagnosticUnderlineInfo", { undercurl = true, sp = C.string })
		set("DiagnosticUnderlineHint", { undercurl = true, sp = C.type })

		-- Syntax (naysayer-theme.el font-lock faces)
		set("Comment", { fg = C.comment })
		set("SpecialComment", { link = "Comment" })
		set("String", { fg = C.string })
		set("Character", { link = "String" })
		set("Constant", { fg = C.constant })
		set("Number", { link = "Constant" })
		set("Float", { link = "Constant" })
		set("Boolean", { link = "Constant" })
		set("Keyword", { fg = C.keyword })
		set("Conditional", { link = "Keyword" })
		set("Repeat", { link = "Keyword" })
		set("Exception", { link = "Keyword" })
		set("Statement", { link = "Keyword" })
		set("Function", { link = "Keyword" })
		set("Type", { fg = C.type })
		set("Typedef", { link = "Type" })
		set("StorageClass", { link = "Type" })
		set("Structure", { link = "Type" })
		set("Identifier", { fg = C.variable })
		set("PreProc", { link = "Type" })
		set("Include", { link = "Type" })
		set("Define", { link = "Type" })
		set("Macro", { link = "Type" })
		set("PreCondit", { link = "Type" })
		set("Special", { link = "Type" })
		set("Delimiter", { fg = C.fg })
		set("Operator", { fg = C.fg })
		set("Label", { link = "Type" })
		set("Todo", { fg = C.bg, bg = C.warning, bold = true })

		-- Treesitter
		set("@variable", { fg = C.variable })
		set("@variable.builtin", { fg = C.keyword })
		set("@variable.member", { fg = C.variable })
		set("@variable.parameter", { fg = C.variable })
		set("@property", { fg = C.variable })
		set("@field", { fg = C.variable })
		set("@operator", { fg = C.fg })
		set("@punctuation.bracket", { fg = C.fg })
		set("@punctuation.delimiter", { fg = C.fg })
		set("@punctuation.special", { fg = C.fg })
		set("@tag.attribute", { fg = C.variable })
		set("@tag.delimiter", { fg = C.fg })

		-- Markup
		set("@markup.heading", { fg = C.keyword, bold = true })
		set("@markup.link", { fg = C.string })
		set("@markup.link.url", { fg = C.string, underline = true })

		-- Rainbow delimiters, in naysayer's rotation
		set("RainbowDelimiterRed", { fg = "#F92672" })
		set("RainbowDelimiterOrange", { fg = "#FD971F" })
		set("RainbowDelimiterYellow", { fg = "#E6DB74" })
		set("RainbowDelimiterGreen", { fg = "#A6E22E" })
		set("RainbowDelimiterBlue", { fg = "#66D9EF" })
		set("RainbowDelimiterViolet", { fg = "#AE81FF" })
		set("RainbowDelimiterCyan", { fg = "#A1EFE4" })

		-- Status bar in the editor's own text colours: dark background, tan
		-- text, with only the mode label tinted from the same palette.
		local function lualine_mode(accent)
			return {
				a = { bg = C.bg_highlight, fg = accent, gui = "bold" },
				b = { bg = C.bg, fg = C.fg },
				c = { bg = C.bg, fg = C.fg },
				x = { bg = C.bg, fg = C.fg },
				y = { bg = C.bg, fg = C.fg },
				z = { bg = C.bg, fg = C.fg },
			}
		end

		local lualine_theme = {
			normal = lualine_mode(C.fg),
			insert = lualine_mode(C.comment),
			visual = lualine_mode(C.keyword),
			replace = lualine_mode(C.warning),
			command = lualine_mode(C.string),
			inactive = {
				a = { bg = C.bg, fg = C.gutter, gui = "bold" },
				b = { bg = C.bg, fg = C.gutter },
				c = { bg = C.bg, fg = C.gutter },
				x = { bg = C.bg, fg = C.gutter },
				y = { bg = C.bg, fg = C.gutter },
				z = { bg = C.bg, fg = C.gutter },
			},
		}

		pcall(function()
			local lualine = require("lualine")
			if lualine.setup then
				lualine.setup({ options = { theme = lualine_theme } })
			end
		end)
	end,
})
