

local a = string.byte('a')


local function is_pangram(s) 
    local letters = {}
    for i = 1, #s do
        local idx = string.byte(string.lower(string.sub(s, i, i))) - a + 1
        if 0 < idx and idx <= 26 then
            letters[idx] = true
        end
    end
    for i = 1, 26 do
        if letters[i] == nil then
            return false
        end
    end
    return true
end


return is_pangram

