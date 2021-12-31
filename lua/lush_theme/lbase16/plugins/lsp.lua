local lush = require "lush"
local lbase = require "lbase"

-- Standard syntax highlighting
-- For help see `:h group-name`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            LspReferenceText         { gui = "undercurl", sp = base0C },
            LspReferenceRead         { gui = "undercurl", sp = base0C },
            LspReferenceWrite        { gui = "undercurl", sp = base0C },
            DiagnosticError          { fg  = base0F },
            DiagnosticWarn           { fg  = base09 },
            DiagnosticInfo           { fg  = base05 },
            DiagnosticHint           { fg  = base0C },
            DiagnosticUnderlineError { gui = "undercurl", sp = base0F },
            DiagnosticUnderlineWarn  { gui = "undercurl", sp = base09 },
            DiagnosticUnderlineInfo  { gui = "undercurl", sp = base05 },
            DiagnosticUnderlineHint  { gui = "undercurl", sp = base0C },
        }
    end
end
return theme
