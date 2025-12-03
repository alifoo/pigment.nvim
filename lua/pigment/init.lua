local M = {}

local palettes = require("pigment.palette").themes

local config = {
	theme = "vintage",
}

function M.setup(opts)
	config = vim.tbl_extend("force", config, opts or {})
end

function M.colorscheme()
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "pigment"

	-- Handle Background setting
	if config.theme == "dark" then
		vim.o.background = "dark"
	else
		vim.o.background = "light"
	end

	local colors = palettes[config.theme] or palettes.vintage
	local set = vim.api.nvim_set_hl

	-- Canvas
	set(0, "Normal", { bg = colors.paper, fg = colors.ink })
	set(0, "NormalFloat", { bg = colors.paper_ultra_light, fg = colors.ink })
	set(0, "FloatBorder", { fg = colors.french_ochre, bg = colors.paper_light })

	-- Selection
	set(0, "Visual", { bg = colors.paper_ultra_light, fg = colors.italian_sky })

	-- Cursor and Lines
	set(0, "CursorLine", { bg = colors.paper_ultra_light })
	set(0, "LineNr", { fg = colors.ink_light })
	set(0, "CursorLineNr", { fg = colors.polish_red, bold = true })

	-- Search
	set(0, "Search", { bg = colors.scandanavian_yellow, fg = colors.ink })
	set(0, "IncSearch", { bg = colors.chinese_orange, fg = colors.english_white })

	-- Comments
	set(0, "Comment", { fg = colors.ink_light, italic = true })

	-- Constants
	set(0, "Constant", { fg = colors.russian_brick })
	set(0, "Number", { link = "Constant" })
	set(0, "Boolean", { link = "Constant" })

	-- Strings
	set(0, "String", { fg = colors.greek_green })
	set(0, "Character", { link = "String" })

	-- Functions
	set(0, "Function", { fg = colors.italian_sky, bold = true })

	-- Statements
	set(0, "Statement", { fg = colors.polish_red, bold = true })
	set(0, "Keyword", { link = "Statement" })

	-- Identifiers
	set(0, "Identifier", { fg = colors.ink })

	-- Types
	set(0, "Type", { fg = colors.french_canadian_ochre })
	set(0, "StorageClass", { link = "Type" })

	-- Specials (Regex, delimiters)
	set(0, "Special", { fg = colors.german_purple })

	-- PreProcessor (Macros, imports)
	set(0, "PreProc", { fg = colors.chinese_orange })

	-- Diagnostics and Git
	set(0, "Error", { fg = colors.russian_red, bold = true })
	set(0, "DiagnosticError", { fg = colors.russian_red })
	set(0, "DiagnosticWarn", { fg = colors.chinese_orange })
	set(0, "DiagnosticInfo", { fg = colors.swiss_blue })
	set(0, "DiagnosticHint", { fg = colors.irish_green })

	set(0, "Added", { fg = colors.syrian_green })
	set(0, "Modified", { fg = colors.scandanavian_yellow })
	set(0, "Removed", { fg = colors.russian_red })

	-- Treesitter links
	set(0, "@variable", { link = "Identifier" })
	set(0, "@function.builtin", { fg = colors.swiss_blue })
	set(0, "@property", { fg = colors.french_ochre })
	set(0, "@constructor", { fg = colors.french_canadian_ochre })

	-- mini.statusline theme
	set(0, "MiniStatuslineModeNormal", { fg = colors.english_white, bg = colors.italian_sky, bold = true })
	set(0, "MiniStatuslineModeInsert", { fg = colors.english_white, bg = colors.irish_green, bold = true })
	set(0, "MiniStatuslineModeVisual", { fg = colors.english_white, bg = colors.italian_sky, bold = true })
	set(0, "MiniStatuslineModeReplace", { fg = colors.english_white, bg = colors.russian_red, bold = true })
	set(0, "MiniStatuslineModeCommand", { fg = colors.english_white, bg = colors.chinese_orange, bold = true })

	set(0, "MiniStatuslineDevinfo", { fg = colors.ink_light, bg = colors.paper_light })
	set(0, "MiniStatuslineFilename", { fg = colors.ink, bg = colors.paper_light })
	set(0, "MiniStatuslineFileinfo", { fg = colors.ink, bg = colors.paper_light })

	set(0, "MiniStatuslineInactive", { fg = colors.ink_light, bg = colors.paper_dim or "#E2D0B3" })
end

return M
