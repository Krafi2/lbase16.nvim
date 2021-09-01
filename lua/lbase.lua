local utils = require "lbase/utils"
local hsl = require("lush").hsl

-- default settings
local default = {
    -- The base colors for onedark from
    -- https://github.com/LalitMaganti/base16-onedark-scheme
    palette = {
        base00 = hsl "#282c34",
        base01 = hsl "#353b45",
        base02 = hsl "#3e4451",
        base03 = hsl "#545862",
        base04 = hsl "#565c64",
        base05 = hsl "#abb2bf",
        base06 = hsl "#b6bdca",
        base07 = hsl "#c8ccd4",
        base08 = hsl "#e06c75",
        base09 = hsl "#d19a66",
        base0A = hsl "#e5c07b",
        base0B = hsl "#98c379",
        base0C = hsl "#56b6c2",
        base0D = hsl "#61afef",
        base0E = hsl "#c678dd",
        base0F = hsl "#be5046",
    },
}

-- module state
local mod = utils.deep_copy(default)

local M = {}

-- Currently, it is possible to set palette colors other than those included in the base16
-- specification. There are some potential use-cases so I'm not sure whether to remove this functionality.

-- function M.update()
--     local files = vim.api.nvim_get_runtime_file "lua/lush_theme/lbase16/*.lua"
-- end

-- Set the color palette.
function M.set_palette(palette)
    -- The operation we do are destructive, so we clone to preserve the user's state
    palette = utils.deep_copy(palette)

    -- Check that all default colors are present
    for k, _ in pairs(default.palette) do
        if not palette[k] then
            utils.print_error(
                ("Missing color '%s' in provided palette"):format(k)
            )
            -- A nice magenta to signify missing color
            palette[k] = "#FF00FF"
        end
    end

    mod.palette = vim.tbl_extend("force", mod.palette, palette)
end

-- Get the current color palette. The palette is cloned, so setting fields
-- will have no effect on the module state. If you want to change the colors,
-- use `set_palette` or `set_color` instead.
function M.palette()
    return utils.deep_copy(mod.palette)
end

-- Set the palette color `col` to `value`.
function M.set_color(col, value)
    if value then
        mod.palette[col] = value
    end
end

-- Get the palette color `col`
function M.get_color(col)
    return mod.palette[col]
end

-- Inject the palette into the enviroment of the calling function.
-- This means you will be able to access the variables ['base00', 'base01', ...]
-- Linters and LSPs don't know about these variables, so you will
-- likely see errors, which you can safely ignore.
function M.inject_palette()
    local env = getfenv(2)
    local meta = getmetatable(env) or {}
    local old_index = meta.__index or function() end

    setmetatable(env, {
        __index = function(t, key)
            local col = mod.palette[key]
            if col then
                return col
            else
                return old_index(t, key)
            end
        end,
    })
end

return M
