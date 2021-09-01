local lush = require "lush"
local lbase = require "lbase"

-- Vim editor colors
-- For help see `:h highlight-groups`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            IndentBlankLineChar { fg = base03 },
            IndentBlanklineSpaceChar { IndentBlankLineChar },
            IndentBlanklineSpaceCharBlankline { IndentBlankLineChar },
        }
    end
end
return theme
