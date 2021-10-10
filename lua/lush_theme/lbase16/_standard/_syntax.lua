local lush = require "lush"
local lbase = require "lbase"

-- Standard syntax highlighting
-- For help see `:h group-name`
-- stylua: ignore
local function theme()
    return function()
    lbase.inject_palette()
        return {
            Comment      { fg = base03 },
            String       { fg = base0B },
            Constant     { fg = base09 },
            Character    { fg = base0B },
            Number       { fg = base09 },
            Boolean      { fg = base09 },
            Float        { fg = base09 },
            Identifier   { fg = base08, gui = "none" },
            Function     { fg = base0D },
            Statement    { fg = base0E },
            Conditional  { fg = base0E },
            Repeat       { fg = base0E },
            Label        { fg = base0E },
            Operator     { fg = base05, gui = "none" },
            Keyword      { fg = base0E },
            Exception    { fg = base0E },
            PreProc      { fg = base0A },
            Include      { fg = base0D },
            Define       { fg = base0E, gui = "none" },
            Macro        { fg = base0D },
            Preconduit   { fg = base0E },
            Type         { fg = base0A, gui = "none" },
            StorageClass { fg = base0E },
            Structure    { fg = base0E },
            Typedef      { fg = base0E },
            Special      { fg = base0C },
            SpecialChar  { fg = base0C },
            Tag          { fg = base0A },
            Delimiter    { fg = base05 },
            Underlined   { fg = base0D, gui = "underline" },
            Error        { fg = base0F },
            Todo         { fg = base0A, bg = base01 },

            -- These groups aren't mentioned anywhere in the docs, but most colorschemes define them
            Bold       { gui = "bold" },
            Italic     { gui = "italic" },
        }
    end
end
return theme
