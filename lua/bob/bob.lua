local bob = {}

function bob.hey(s)
    local len = #s
    if len == 0 then
        return "Fine, be that way."
    elseif string.char(string.byte(s, #s)) == '?' then -- ?
        return "Sure"
    elseif string.char(string.byte(s, #s)) == '.' then -- .
        return "Whatever"
    end
    if string.char(string.byte(s, #s)) == '!' then -- !
        for i = 1, len do
            local c = s:sub(i, i)
            if string.upper(c) ~= c then
                return "Whatever"
            end
        end
        return "Whoa, chill out!"
    end
    return "Whatever"
end

return bob