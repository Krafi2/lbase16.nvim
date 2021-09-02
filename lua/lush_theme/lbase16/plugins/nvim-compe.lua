local lush = require "lush"
local lbase = require "lbase"

-- Highlight groups for hrsh7th/nvim-compe
-- stylua: ignore
local function theme(ctx)
    return function()
        lbase.inject_palette()
        return {
            CompeDocumentation { ctx.NormalFloat },
            CompeDocumentationBorder { ctx.FloatBorder }
        }
    end
end
return theme
