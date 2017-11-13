

local a = string.byte('a')


local function is_pangram(s) 
    local letters = {}
    local count = 0
    for i = 1, #s do
        local idx = string.byte(string.lower(string.sub(s, i, i))) - a + 1
        if 0 < idx and idx <= 26 and letters[idx] == nil then
            letters[idx] = true
            count = count + 1
        end
    end
    return count == 26
end


return is_pangram

