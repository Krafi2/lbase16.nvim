local lush = require "lush"
local lbase = require "lbase"

-- Highlighting for folke/trouble.nvim
-- For help see the trouble.nvim README
-- stylua: ignore
local function theme(ctx)
    return function()
        lbase.inject_palette()
        return {
            TroubleNormal             { ctx.NormalFloat },
            TroubleCode               { fg = base04 },
            TroubleCount              { fg = base0A, bg = base02 },
            TroubleError              { fg = base08 },
            TroubleFile               { fg = base0D },
            TroubleFoldIcon           { TroubleNormal },
            TroubleHint               { bg = base0E },
            TroubleIndent             { fg = base03 },
            TroubleInformation        { bg = base08 },
            TroubleLocation           { fg = base03 },
            TroublePreview            { ctx.Search },
            TroubleSignError          { fg = base08 },
            TroubleSignHint           { fg = base0C },
            TroubleSignInformation    { fg = base05 },
            TroubleSignOther          { TroubleSignInformation },
            TroubleSignWarning        { fg = base09 },
            TroubleSource             { fg = base03 },
            TroubleText               { TroubleNormal },
            -- TroubleTextError       {},
            -- TroubleTextHint        {},
            -- TroubleTextInformation {},
            -- TroubleTextWarning     {},
            TroubleWarning            { fg = base09 },
        }
    end
end
return theme
