

local pn = {}

local function divisors(n)
    local res = {}
    for i = 1, n - 1 do
        if math.floor(n / i) == (n / i) then
            table.insert(res, i)
        end
    end
    return res
end

function pn.aliquot_sum(n)
    local div = divisors(n)
    local sum = 0
    for _, v in ipairs(div) do
        sum = sum + v
    end
    return sum
end

function pn.classify(n)
    local sum = pn.aliquot_sum(n)
    if sum < n then
        return "deficient"
    elseif sum > n then
        return "abundant"
    else
        return "perfect"
    end
end

return pn