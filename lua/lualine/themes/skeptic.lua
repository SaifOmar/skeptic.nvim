-- Lualine theme for Skeptic.
-- The editor bar keeps the editor's own colours -- dark teal background, warm
-- tan text -- with only the mode label tinted from the same palette.
-- Picked up automatically by lualine's "auto" theme from vim.g.colors_name.

local C = {
	bg = "#062329",
	bg_highlight = "#0b3335",
	fg = "#d1b897",
	gutter = "#126367",
	comment = "#44b340",
	keyword = "#ffffff",
	string = "#2ec09c",
	warning = "#ffaa00",
}

local M = {}

local function mode(accent)
	return {
		a = { bg = C.bg_highlight, fg = accent, gui = "bold" },
		b = { bg = C.bg, fg = C.fg },
		c = { bg = C.bg, fg = C.fg },
		x = { bg = C.bg, fg = C.fg },
		y = { bg = C.bg, fg = C.fg },
		z = { bg = C.bg, fg = C.fg },
	}
end

M.normal = mode(C.fg)
M.insert = mode(C.comment)
M.visual = mode(C.keyword)
M.command = mode(C.string)
M.replace = mode(C.warning)

M.inactive = {
	a = { bg = C.bg, fg = C.gutter, gui = "bold" },
	b = { bg = C.bg, fg = C.gutter },
	c = { bg = C.bg, fg = C.gutter },
	x = { bg = C.bg, fg = C.gutter },
	y = { bg = C.bg, fg = C.gutter },
	z = { bg = C.bg, fg = C.gutter },
}

return M
