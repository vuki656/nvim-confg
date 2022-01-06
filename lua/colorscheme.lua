local set_highlight = require("utils.set-highlight")
local set_sign = require("utils.set-sign")
local colors = require("utils.colors")
local LSP_ICONS = require("lsp.utils.icons")

local background = colors.background
local background_light = colors.background_light
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange
local blue = colors.blue
local green = colors.green
local grey = colors.grey
local grey_light = colors.grey_light
local grey_lighter = colors.grey_lighter

set_sign({
    list = {
        { name = "DiagnosticSignError", sign = LSP_ICONS.ERROR, highlight_group = "DiagnosticSignError" },
        { name = "DiagnosticSignWarn", sign = LSP_ICONS.WARNING, highlight_group = "DiagnosticSignWarn" },
        { name = "DiagnosticSignInfo", sign = LSP_ICONS.INFO, highlight_group = "DiagnosticSignInfo" },
        { name = "DiagnosticSignHint", sign = LSP_ICONS.HINT, highlight_group = "DiagnosticSignHint" },
    },
})

set_highlight({
    list = {
        { group = "bold", foreground = red, background = blue },
        { group = "Conceal", foreground = red, background = blue },
        { group = "CursorIM", foreground = red, background = blue },
        { group = "ColorColumn", foreground = red, background = blue },
        { group = "Cursor", foreground = red, background = blue },
        { group = "CursorColumn", foreground = red, background = blue },
        { group = "Directory", foreground = red, background = blue },
        { group = "Folded", foreground = red, background = blue },
        { group = "FoldColumn", foreground = red, background = blue },
        { group = "IncSearch", foreground = red, background = blue },
        { group = "Italic", foreground = red, background = blue },
        { group = "MoreMsg", foreground = red, background = blue },
        { group = "NonText", foreground = red, background = blue },
        { group = "PMenuSbar", foreground = red, background = blue },
        { group = "PMenuThumb", foreground = red, background = blue },
        { group = "StatusLine", foreground = red, background = blue },
        { group = "TabLine", foreground = red, background = blue },
        { group = "TabLineFill", foreground = red, background = blue },
        { group = "TabLineSel", foreground = red, background = blue },
        { group = "Title", foreground = red, background = blue },
        { group = "VisualNOS", foreground = red, background = blue },
        { group = "TooLong", foreground = red, background = blue },
        { group = "WildMenu", foreground = red, background = blue },
        { group = "helpCommand", foreground = red, background = blue },
        { group = "helpHeader", foreground = red, background = blue },
        { group = "helpSectionDelim", foreground = red, background = blue },
        { group = "String", foreground = red, background = blue },
        { group = "Character", foreground = red, background = blue },
        { group = "Number", foreground = red, background = blue },
        { group = "Boolean", foreground = red, background = blue },
        { group = "Float", foreground = red, background = blue },
        { group = "Function", foreground = red, background = blue },
        { group = "Statement", foreground = red, background = blue },
        { group = "Conditional", foreground = red, background = blue },
        { group = "Repeat", foreground = red, background = blue },
        { group = "Keyword", foreground = red, background = blue },
        { group = "Exception", foreground = red, background = blue },
        { group = "Include", foreground = red, background = blue },
        { group = "Define", foreground = red, background = blue },
        { group = "Macro", foreground = red, background = blue },
        { group = "PreCondit", foreground = red, background = blue },
        { group = "StorageClass", foreground = red, background = blue },
        { group = "Structure", foreground = red, background = blue },
        { group = "Typedef", foreground = red, background = blue },
        { group = "SpecialChar", foreground = red, background = blue },
        { group = "Tag", foreground = red, background = blue },
        { group = "Delimiter", foreground = red, background = blue },
        { group = "Debug", foreground = red, background = blue },
        { group = "Underlined", foreground = red, background = blue },
        { group = "Ignore", foreground = red, background = blue },

        -- Editor
        { group = "Search", foreground = background, background = orange },
        { group = "Comment", foreground = grey },
        { group = "SpecialComment", foreground = orange },
        { group = "Constant", foreground = green },
        { group = "Type", foreground = orange },
        { group = "Operator", foreground = white },
        { group = "CursorLine", background = grey_lighter },
        { group = "Todo", background = blue, foreground = background },
        { group = "CursorLineNr", foreground = white },
        { group = "Normal", background = background },
        { group = "StatusLineNC", foreground = background },
        { group = "SignColumn", background = background },
        { group = "EndOfBuffer", foreground = background },
        { group = "SpellBad", options = "undercurl,bold" },
        { group = "PMenu", foreground = white, background = grey_lighter },
        { group = "ModeMsg", foreground = white },
        { group = "PmenuSel", background = green, foreground = background },
        { group = "LineNr", background = background, foreground = grey },
        { group = "VertSplit", background = background_light, foreground = background },
        { group = "Visual", background = grey_light },
        { group = "MatchParen", foreground = red, background = background },
        { group = "ErrorMsg", foreground = red, background = background },
        { group = "WarningMsg", foreground = orange, background = background },
        { group = "Whitespace", foreground = background_light },
        { group = "Label", foreground = red },
        { group = "Question", foreground = green, background = background },
        { group = "SpecialKey", foreground = orange, background = background },

        -- Diagnostics
        { group = "DiagnosticUnderlineError", foreground = red },
        { group = "DiagnosticUnderlineWarning", foreground = yellow },
        { group = "DiagnosticUnderlineInformation", foreground = blue },
        { group = "DiagnosticUnderlineHint", foreground = orange },
        { group = "DiagnosticFloatingError", foreground = red },
        { group = "DiagnosticFloatingWarn", foreground = yellow },
        { group = "DiagnosticFloatingInfo", foreground = blue },
        { group = "DiagnosticFloatingHint", foreground = orange },
        { group = "DiagnosticError", foreground = red },
        { group = "DiagnosticWarn", foreground = yellow },
        { group = "DiagnosticInfo", foreground = blue },
        { group = "DiagnosticHint", foreground = orange },

        -- Git
        { group = "diffAdded", foreground = green },
        { group = "diffRemoved", foreground = red },
        { group = "diffLine", foreground = blue },

        -- Documentation
        { group = "Statement", foreground = purple, options = "NONE" },
        { group = "PreProc", foreground = grey },
        { group = "Identifier", foreground = red },
        { group = "HelpExample", foreground = orange },
        { group = "Special", foreground = blue },

        -- Treesitter
        { group = "TSFuncBuiltin", foreground = blue },
        { group = "TSConstant", foreground = orange },
        { group = "TSNumber", foreground = orange },
        { group = "TSString", foreground = green },
        { group = "TSFuncMacro", foreground = red },
        { group = "TSMethod", foreground = blue },
        { group = "TSField", foreground = red },
        { group = "TSKeywordFunction", foreground = red },
        { group = "TSTitle", foreground = red },
        { group = "TSConditional", foreground = purple },
        { group = "TSRepeat", foreground = purple },
        { group = "TSKeyword", foreground = purple },
        { group = "TSFunction", foreground = blue },
        { group = "TSInclude", foreground = purple },
        { group = "TSKeywordOperator", foreground = purple },
        { group = "TSBoolean", foreground = purple },
        { group = "TSConstBuiltin", foreground = purple },
        { group = "TSTypeBuiltin", foreground = purple },
        { group = "TSType", foreground = yellow },
        { group = "TSVariable", foreground = white },
        { group = "TSNamespace", foreground = white },
        { group = "TSConstructor", foreground = yellow },
        { group = "TSParameter", foreground = orange },
        { group = "TSProperty", foreground = red },
        { group = "TSLabel", foreground = red },
        { group = "TSPunctBracket", foreground = white },
        { group = "TSOperator", foreground = white },
        { group = "TSPunctDelimiter", foreground = white },
        { group = "TSPunctSpecial", foreground = orange },
        { group = "TSTagDelimiter", foreground = white },
        { group = "TSTag", foreground = red },
    },
})
