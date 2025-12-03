local M = {}

local accents = {
	english_teal = "#4C9A9C",
	irish_green = "#7B966F",
	greek_green = "#4C795C",
	syrian_green = "#4F7F57",
	german_pink = "#A08284",
	russian_brick = "#C66B56",
	polish_red = "#B4514B",
	italian_sky = "#235985",
	swiss_blue = "#336683",
	french_ochre = "#916946",
	french_canadian_ochre = "#88632C",
	chinese_orange = "#E4964C",
	scandanavian_yellow = "#D4B250",
	russian_red = "#C84C4C",
	german_purple = "#9D93B3",
	english_white = "#FCEDDA",
}

M.themes = {
	vintage = vim.tbl_extend("force", accents, {
		paper = "#D7C99B",
		paper_light = "#DCCEA3",
		paper_ultra_light = "#E3D6AC",
		paper_dim = "#C5B88A",
		ink = "#2B2B2B",
		ink_light = "#585858",
	}),
	dark = vim.tbl_extend("force", accents, {
		paper = "#1E1E2E",
		paper_light = "#2D2D3F",
		paper_ultra_light = "#38384B",
		paper_dim = "#181825",
		ink = "#CDD6F4",
		ink_light = "#9399B2",

		english_teal = "#89DCEB",
		polish_red = "#F38BA8",
	}),
	canvas = vim.tbl_extend("force", accents, {
		paper = "#FFFFFF",
		paper_light = "#F2F2F2",
		paper_ultra_light = "#FAFAFA",
		paper_dim = "#E6E6E6",
		ink = "#111111",
		ink_light = "#666666",
	}),
}

return M
