
local bracket = {}


local lbs = {['{'] = '}', ['('] = ')', ['['] = ']'}
local rbs = {['}'] = '{', [')'] = '(', [']'] = '['}

function bracket.valid(s)
    local res = {}
    for i = 1, #s do
        local c = string.char(string.byte(s, i))
        if lbs[c] ~= nil then
            res[#res + 1] = c
        elseif rbs[c] ~= nil then
            if lbs[res[#res]] ~= c then
                return false
            end
            res[#res] = nil
        end
    end

    return #res == 0

end

return bracket