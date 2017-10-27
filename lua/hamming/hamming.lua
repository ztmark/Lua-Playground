
local hamming = {}

function hamming.compute(a, b)
    if a:len() ~= b:len() then
        return -1
    end
    local diff = 0
    for i = 1, #a do
        if a:byte(i) ~= b:byte(i) then
            diff = diff + 1
        end
    end
    return diff
end

return hamming