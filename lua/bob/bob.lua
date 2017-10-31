local bob = {}

function bob.hey(s)
    local len = #s
    if len == 0 then
        return "Fine, be that way."
    elseif string.byte(s, #s) == 63 then -- ?
        return "Sure"
    elseif string.byte(s, #s) == 46 then -- .
        return "Whatever"
    end
    if string.byte(s, #s) == 33 then -- !
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