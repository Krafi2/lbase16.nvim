local lush = require "lush"
local lbase = require "lbase"

-- Highlights for kyazdani42/nvim-tree.lua
-- For help see the `:h nvim-treesitter-highlights`
-- stylua: ignore
local function theme()
    return function()
        lbase.inject_palette()
        return {
            NvimTreeNormal { fg = base05, bg = base01 },
            -- NvimTreeEndOfBuffer {},
            -- NvimTreeCursorLine {},
            NvimTreeVertSplit { fg = base03, bg = base01 },
            -- NvimTreeCursorColumn {},

            -- NvimTreeSymlink {},
            -- NvimTreeFolderName {},
            -- NvimTreeRootFolder {},
            -- NvimTreeFolderIcon {},
            -- NvimTreeEmptyFolderName {},
            -- NvimTreeOpenedFolderName {},
            -- NvimTreeExecFile {},
            -- NvimTreeOpenedFile {},
            -- NvimTreeSpecialFile {},
            -- NvimTreeImageFile {},
            -- NvimTreeMarkdownFile {},
            NvimTreeIndentMarker { fg = base03 },

            -- LspDiagnosticsError {},
            -- LspDiagnosticsWarning {},
            -- LspDiagnosticsInformation {},
            -- LspDiagnosticsHint {},
            --
            -- NvimTreeLicenseIcon {},
            -- NvimTreeYamlIcon {},
            -- NvimTreeTomlIcon {},
            -- NvimTreeGitignoreIcon {},
            -- NvimTreeJsonIcon {},
            -- NvimTreeLuaIcon {},
            -- NvimTreePythonIcon {},
            -- NvimTreeShellIcon {},
            -- NvimTreeJavascriptIcon {},
            -- NvimTreeCIcon {},
            -- NvimTreeReactIcon {},
            -- NvimTreeHtmlIcon {},
            -- NvimTreeRustIcon {},
            -- NvimTreeVimIcon {},
            -- NvimTreeTypescriptIcon {},
            --
            -- NvimTreeGitDirty {},
            -- NvimTreeGitStaged {},
            -- NvimTreeGitMerge {},
            -- NvimTreeGitRenamed {},
            -- NvimTreeGitNew {},
            -- NvimTreeGitDeleted {},
        }
    end
end
return theme
