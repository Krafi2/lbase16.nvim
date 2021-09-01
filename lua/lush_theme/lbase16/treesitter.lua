local lush = require "lush"
local lbase = require "lbase"

-- Treesitter highlights
-- Type `:h nvim-treesitter-highlights` for help
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            TSAnnotation         { fg = base0F },
            TSAttribute          { fg = base0A },
            TSBoolean            { fg = base09 },
            TSCharacter          { fg = base0B },
            TSComment            { fg = base03, gui = "italic" },
            TSConditional        { fg = base0E },
            TSConstant           { fg = base09 },
            TSConstBuiltin       { fg = base09 },
            TSConstMacro         { fg = base0D },
            TSConstructor        { fg = base0D },
            TSError              { fg = base0F },
            TSException          { fg = base0E },
            TSField              { fg = base08 },
            TSFloat              { fg = base09 },
            TSFunction           { fg = base0D },
            TSFuncBuiltin        { fg = base0D },
            TSFuncMacro          { fg = base0D },
            TSInclude            { fg = base0E },
            TSKeyword            { fg = base0E },
            -- TSKeywordFunction {}
            -- TSKeywordOperator {}
            -- TSKeywordReturn   {}
            TSLabel              { fg = base0E },
            TSMethod             { fg = base0D },
            TSNamespace          { fg = base0A },
            TSNone               { fg = base05 },
            TSNumber             { fg = base09 },
            TSOperator           { fg = base05 },
            TSParameter          { fg = base08 },
            TSProperty           { fg = base08 },
            TSPunctDelimiter     { fg = base05 },
            TSPunctBracket       { fg = base05 },
            TSPunctSpecial       { fg = base05 },
            TSRepeat             { fg = base0E },
            TSString             { fg = base0B },
            TSStringRegex        { fg = base0C },
            TSStringEscape       { fg = base0C },
            TSSymbol             { fg = base0B },
            TSTag                { fg = base0A },
            TSTagDelimiter       { fg = base0F },
            TSText               { fg = base05 },
            TSStrong             { gui = "bold" },
            TSEmphasis           { fg = base05, gui = "italic" },
            TSUnderline          { fg = base05, gui = "underline" },
            TSStrike             { fg = base05, gui = "strikethrough" },
            TSTitle              { fg = base0D, gui = "bold" },
            TSLiteral            { fg = base09 },
            TSURI                { fg = base08, gui = "underline" },
            TSMath               { fg = base05 },
            TSType               { fg = base0A },
            TSTypeBuiltin        { fg = base0A },
            TSVariable           { fg = base08 },
            TSVariableBuiltin    { fg = base08 },
        }
    end
end
return theme
