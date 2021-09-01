local lush = require "lush"
local lbase = require "lbase"

-- Vim editor colors
-- For help see `:h highlight-groups`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            ColorColumn  { bg = base01 },
            Conceal      { fg = base0D },
            Cursor       { fg = base00, bg = base05 },
            CursorColumn { bg = base01 },
            CursorLine   { bg = base01 },
            Directory    { fg = base0D },
            DiffAdd      { fg = base0B },
            DiffChange   { fg = base0E },
            DiffDelete   { fg = base08 },
            DiffText     { fg = base0D },
            TermCursor   { fg = base00, bg = base05 },
            TermCursorNC { fg = base00, bg = base04 },
            VertSplit    { fg = base03 },
            Folded       { fg = base03, bg = base01 },
            FoldColumn   { fg = base0C, bg = base01 },
            SignColumn   { fg = base04, bg = base00 },
            IncSearch    { fg = base01, bg = base09 },
            Substitute   { fg = base01, bg = base0A },
            LineNr       { fg = base04, bg = base00 },
            CursorLineNr { CursorLine },
            MatchParen   { bg = base02 },
            ModeMsg      { fg = base0D },
            MsgSeparator { fg = base03, bg = base02 },
            MsgArea      { fg = base05, bg = base02 },
            MoreMsg      { fg = base0D },
            ErrorMsg     { MsgArea, fg = base08 },
            NonText      { fg = base03 },
            Normal       { fg = base05, bg = base00 },
            NormalFloat  { fg = base05, bg = base01 },
            FloatBorder  { NormalFloat, fg = base03 },
            NormalNC     { fg = base05, bg = base00 },
            PMenu        { fg = base05, bg = base01 },
            PMenuSel     { fg = base05, bg = base03 },
            PmenuSbar    { fg = base05, bg = base02 },
            PmenuThumb   { fg = base05, bg = base05 },
            Question     { fg = base0D },
            QuickFixLine { bg = base01 },
            Search       { fg = base01, bg = base0A },
            SpecialKey   { fg = base03 },
            SpellBad     { gui = "undercurl", sp = base08 },
            SpellLocal   { gui = "undercurl", sp = base0C },
            SpellCap     { gui = "undercurl", sp = base0D },
            SpellRare    { gui = "undercurl", sp = base0E },
            StatusLine   { fg = base04, bg = base02 },
            StatusLineNC { fg = base03, bg = base02 },
            TabLine      { fg = base04, bg = base00 },
            TabLineFill  { fg = base04, bg = base00 },
            TabLineSel   { fg = base05, bg = base02 },
            Title        { fg = base0D, gui = "bold" },
            Visual       { bg = base02 },
            VisualNOS    { bg = base02 },
            WarningMsg   { MsgArea, fg = base09 },
            WildMenu     { fg = base05, bg = base01 },
        }
    end
end
return theme
