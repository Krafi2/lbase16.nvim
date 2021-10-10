local lush = require "lush"
local lbase = require "lbase"

-- Standard syntax highlighting
-- For help see `:h group-name`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            LspReferenceText                   { gui = "undercurl", sp = base0C },
            LspReferenceRead                   { gui = "undercurl", sp = base0C },
            LspReferenceWrite                  { gui = "undercurl", sp = base0C },
            LspDiagnosticsDefaultError         { fg  = base0F },
            LspDiagnosticsDefaultWarning       { fg  = base09 },
            LspDiagnosticsDefaultInformation   { fg  = base05 },
            LspDiagnosticsDefaultHint          { fg  = base0C },
            LspDiagnosticsUnderlineError       { gui = "undercurl", sp = base0F },
            LspDiagnosticsUnderlineWarning     { gui = "undercurl", sp = base09 },
            LspDiagnosticsUnderlineInformation { gui = "undercurl", sp = base05 },
            LspDiagnosticsUnderlineHint        { gui = "undercurl", sp = base0C },
        }
    end
end
return theme
