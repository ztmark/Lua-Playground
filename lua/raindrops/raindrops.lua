
local raindrops = {}

function raindrops(n)
    local res
    if n % 3 == 0 then
        res = (res or "") .. "Pling"
    end
    if n % 5 == 0 then
        res = (res or "") .. "Plang"
    end
    if n % 7 == 0 then
        res = (res or "") .. "Plong"
    end
    return res or tostring(n)
end


return raindrops