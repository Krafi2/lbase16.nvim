local lbase = require "lbase"

-- Highlights for romgrk/barbar.nvim
-- For help see the README at https://github.com/hrsh7th/nvim-cmp
-- stylua: ignore
local function theme(ctx)
    return function()
        lbase.inject_palette()
        return {
            CmpItemAbbr { fg = base05 },
            CmpItemAbbrDeprecated { CmpItemAbbr, gui = "strikethrough", sp = base08 },
            CmpItemAbbrMatch { fg = base0A },
            CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },
            CmpItemKind { fg = base03 },
            CmpItemMenu { CmpItemKind },
        }
    end
end
return theme
