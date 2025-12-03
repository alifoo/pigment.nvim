local M = {}
local palettes = require("pigment.palette").themes

M.get_theme = function(theme_name)
	theme_name = theme_name or "vintage"
	local colors = palettes[theme_name] or palettes.vintage

	return {
		normal = {
			a = { fg = colors.english_white, bg = colors.english_teal, gui = "bold" },
			b = { fg = colors.ink, bg = colors.paper_light },
			c = { fg = colors.ink_light, bg = colors.paper },
		},
		insert = {
			a = { fg = colors.english_white, bg = colors.irish_green, gui = "bold" },
			b = { fg = colors.ink, bg = colors.paper_light },
			c = { fg = colors.ink_light, bg = colors.paper },
		},
		visual = {
			a = { fg = colors.english_white, bg = colors.italian_sky, gui = "bold" },
			b = { fg = colors.ink, bg = colors.paper_light },
			c = { fg = colors.ink_light, bg = colors.paper },
		},
		replace = {
			a = { fg = colors.english_white, bg = colors.russian_red, gui = "bold" },
			b = { fg = colors.ink, bg = colors.paper_light },
			c = { fg = colors.ink_light, bg = colors.paper },
		},
		command = {
			a = { fg = colors.english_white, bg = colors.chinese_orange, gui = "bold" },
			b = { fg = colors.ink, bg = colors.paper_light },
			c = { fg = colors.ink_light, bg = colors.paper },
		},
		inactive = {
			a = { fg = colors.ink_light, bg = colors.paper, gui = "bold" },
			b = { fg = colors.ink_light, bg = colors.paper },
			c = { fg = colors.ink_light, bg = colors.paper },
		},
	}
end

return M
