-- Nvim Sakura theme
-- 2025 Aethari
-- https://github.com/Aethari/nvim-sakura

local nvim_sakura = {}

function nvim_sakura.setup()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "nvim-sakura"

	-- redefinitions for readability
	local hl = vim.api.nvim_set_hl

	-- Hex colors
	local fg = "#c36ec4"
	local bg = "#18131e"

	-- Base UI elements
	hl(0, "Normal", { fg = fg, bg = bg })
	hl(0, "NormalFloat", { fg = fg, bg = bg })
	hl(0, "FloatBorder", { fg = fg })
	hl(0, "FloatTitle", { fg = fg })

	-- Cursor and selection
	hl(0, "Cursor", { fg = bg, bg = fg })
	hl(0, "CursorLine", { bg = fg })
	hl(0, "Visual", {reverse = true})

	-- Other UI elements
	hl(0, "LineNr", { fg = fg, bg = bg })
	hl(0, "CursorLineNr", { fg = fg, bg = bg })
	hl(0, "SignColumn", { bg = bg })
	hl(0, "VertSplit", { fg = bg })
	hl(0, "StatusLine", { fg = fg, bg = bg })
	hl(0, "StatusLineNC", { fg = fg, bg = bg })

	-- Menus
	hl(0, "Pmenu", { fg = fg, bg = bg })
	hl(0, "PmenuSel", { fg = bg, bg = fg })
	hl(0, "PmenuSbar", { bg = bg })
	hl(0, "PmenuThumb", { bg = fg })

	-- Messages
	hl(0, "ErrorMsg", { ctermfg = 9 })
	hl(0, "WarningMsg", { ctermfg = 11 })
	hl(0, "ModeMsg", { fg = fg })
	hl(0, "MoreMsg", { fg = fg })
	hl(0, "Question", { fg = fg })

	-- Search
	hl(0, "Search", { ctermfg = 0, ctermbg = 14 })
	hl(0, "IncSearch", { ctermfg = 0, ctermbg = 11 })

	-- Folds and special text
	hl(0, "Folded", { fg = fg, bg = bg })
	hl(0, "NonText", { fg = fg })
	hl(0, "SpecialKey", { fg = fg })

	-- Syntax highlighting
	hl(0, "Comment", { ctermfg = 8 })

	-- Text elements
	hl(0, "Constant", { fg = fg })
	hl(0, "String", { fg = fg })
	hl(0, "Character", { fg = fg })
	hl(0, "Number", { fg = fg })
	hl(0, "Boolean", { fg = fg })
	hl(0, "Float", { fg = fg })

	hl(0, "Identifier", { fg = fg })
	hl(0, "Function", { fg = fg })

	hl(0, "Statement", { fg = fg })
	hl(0, "Conditional", { fg = fg })
	hl(0, "Repeat", { fg = fg })
	hl(0, "Label", { fg = fg })
	hl(0, "Operator", { fg = fg })
	hl(0, "Keyword", { fg = fg })
	hl(0, "Exception", { fg = fg })

	hl(0, "PreProc", { fg = fg, bold=true})
	hl(0, "Include", { fg = fg, bold=true})
	hl(0, "Define", { fg = fg, bold=true})
	hl(0, "Macro", { fg = fg, bold=true})
	hl(0, "PreCondit", { fg = fg, bold=true})

	hl(0, "Type", { fg = fg, bold=true})
	hl(0, "StorageClass", { fg = fg })
	hl(0, "Structure", { fg = fg })
	hl(0, "Typedef", { fg = fg })

	hl(0, "Special", { fg = fg })

	hl(0, "Underlined", { fg = fg, underline = true })
	hl(0, "Error", { fg = fg, underline = true })
	hl(0, "Todo", { fg = fg, bold = true })

	-- Diagnostics
	hl(0, "DiagnosticError", { fg = fg })
	hl(0, "DiagnosticWarn", { fg = fg })
	hl(0, "DiagnosticInfo", { fg = fg })
	hl(0, "DiagnosticHint", { fg = fg })

	-- Tree-sitter groups
	hl(0, "@text.literal", { fg = fg })
	hl(0, "@text.reference", { fg = fg })
	hl(0, "@text.title", { fg = fg, bold = true })
	hl(0, "@text.uri", { fg = fg, underline = true })
	hl(0, "@text.underline", { fg = fg, underline = true })
	hl(0, "@text.todo", { fg = fg, bold = true })
	hl(0, "@comment", { fg = fg })
	hl(0, "@punctuation", { fg = fg })
	hl(0, "@constant", { fg = fg })
	hl(0, "@string", { fg = fg })
	hl(0, "@function", { fg = fg })
	hl(0, "@variable", { fg = fg })
	hl(0, "@keyword", { fg = fg })
end

return nvim_sakura
