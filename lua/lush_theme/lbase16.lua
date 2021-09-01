local lush = require "lush"

-- Get all lua files located under the lush colorscheme
local files = vim.api.nvim_get_runtime_file("lua/lush_theme/lbase16/*", true)

local theme = lush.parse(function()
    return {}
end)

local loaded = {
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/_editor.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/_syntax.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/barbar.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/indent-blankline.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/lsp.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/nvim-tree.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/symbols-outline.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/treesitter.lua"] = true,
    -- ["/home/goose/.local/share/nvim/site/pack/packer/start/lbase16.nvim/lua/lush_theme/lbase16/trouble.lua"] = true,
}
for _, file in pairs(files) do
    -- There is a bug where `nvim_get_runtime_file` returns duplicates:
    -- https://github.com/neovim/neovim/issues/14294
    if not loaded[file] then
        loaded[file] = true
        -- `spec` is a function that creates a spec from the theme context
        local spec = dofile(file)
        spec = spec(theme)
        theme = lush.extends({ theme }).with(spec)
    end
end
return theme
