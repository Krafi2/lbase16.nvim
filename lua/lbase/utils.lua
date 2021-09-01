local M = {}

-- Print message with error higlighting without stopping execution.
function M.print_error(message)
    vim.api.nvim_echo({ { message, "ErrorMsg" } }, true, {})
end

function M.reload(mod)
    package.loaded[mod] = nil
    return require(mod)
end

-- http://lua-users.org/wiki/CopyTable
-- Save copied tables in `copies`, indexed by original table.
-- Unlike vim.deepcopy, this function copies metatables as well
function M.deep_copy(orig, copies)
    copies = copies or {}
    local orig_type = type(orig)
    local copy
    if orig_type == "table" then
        if copies[orig] then
            copy = copies[orig]
        else
            copy = {}
            copies[orig] = copy
            for orig_key, orig_value in next, orig, nil do
                copy[M.deep_copy(orig_key, copies)] = M.deep_copy(
                    orig_value,
                    copies
                )
            end
            setmetatable(copy, M.deep_copy(getmetatable(orig), copies))
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

return M
