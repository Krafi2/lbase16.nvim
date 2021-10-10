local lush = require "lush"
local lbase = require "lbase"

-- Highlights for simrat39/symbols-outline
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            FocusedSymbol { bg = base02 },
            SymbolsOutlineConnector { fg = base03 },
        }
    end
end
return theme
