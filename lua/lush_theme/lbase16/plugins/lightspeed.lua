local lush = require "lush"
local lbase = require "lbase"

-- Highlights for lightspeed.nvim
-- For help see the `:h lightspeed-highlight`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            LightspeedLabel                  { fg = base0A,},
            LightspeedLabelOverlapped        { LightspeedLabel, special = "underline" },
            LightspeedLabelDistant           { fg = base0D },
            LightspeedLabelDistantOverlapped { LightspeedLabelDistant, special = "underline" },
            LightspeedShortcut               { fg = base08},
            LightspeedShortcutOverlapped     { LightspeedShortcut, special = "underline"  },
            LightspeedGreyWash               { fg = base03 },
            LightspeedMaskedChar             { fg = base04 },
            LightspeedUnlabeledMatch         { fg = base09 },
            LightspeedOneCharMatch           { fg = base00, bg = base0A},
            LightspeedUniqueChar             { LightspeedUnlabeledMatch, special = "underline"  },
            LightspeedPendingOpArea          { bg = base02},
            LightspeedPendingChangeOpArea    { LightspeedPendingOpArea, special = "strikethrough" },
        }
    end
end
return theme
