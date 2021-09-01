local lush = require "lush"
local lbase = require "lbase"

-- Highlighting for romgrk/barbar.nvim
-- For help see the `:h barbar-highlights`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            BufferTabpages       { fg = base05,      bg = base00 },
            BufferTabpageFill    { fg = base03,      bg = base00 },
            BufferOffset         { fg = base05,      bg = base01 },

            BufferCurrent        { fg = base05,      bg = base02 },
            BufferCurrentIcon    { BufferCurrent                 },
            BufferCurrentIndex   { BufferCurrent                 },
            BufferCurrentMod     { BufferCurrent,    fg = base0B },
            BufferCurrentSign    { BufferCurrent,    fg = base0D },
            BufferCurrentTarget  { BufferCurrent,    fg = base09 },

            BufferVisible        { fg = base04,      bg = base00 },
            BufferVisibleIcon    { BufferVisible                 },
            BufferVisibleIndex   { BufferVisible,    fg = base03 },
            BufferVisibleMod     { BufferVisible,    fg = base0B },
            BufferVisibleSign    { BufferVisible,    fg = base03 },
            BufferVisibleTarget  { BufferVisible,    fg = base09 },

            BufferInactive       { fg = base04,      bg = base00 },
            BufferInactiveIcon   { BufferInactive                },
            BufferInactiveIndex  { BufferInactive,   fg = base03 },
            BufferInactiveMod    { BufferInactive,   fg = base0B },
            BufferInactiveSign   { BufferInactive,   fg = base03 },
            BufferInactiveTarget { BufferInactive,   fg = base09 },
        }
    end
end
return theme
