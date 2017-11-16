

local function isLetter(c)
    local cc = string.byte(c)
    if string.byte('a') <= cc and cc <= string.byte('z')
        or string.byte('A') <= cc and cc <= string.byte('Z') then
        return true
    end
    return false
end

return function(s)
    local res = {}
    for i = 1, #s do
        local c = string.lower(string.sub(s, i, i))
        if isLetter(c) then
            if res[c] then 
                return false
            end
            res[c] = true
        end
    end
    return true
end