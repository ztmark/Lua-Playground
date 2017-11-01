
local diff = {}

function diff.sum_of_squares(n)
    local sum = 0
    for i = 1, n do
        sum = sum + squre(i)
    end
    return sum
end

function diff.square_of_sums(n)
    return squre(math.floor(n * (n + 1) / 2))
end

function diff.difference_of_squares(n)
    local sumOfSquares = diff.sum_of_squares(n)
    local squreOfSums = diff.square_of_sums(n)
    return math.abs(sumOfSquares - squreOfSums)
end

function squre(n)
    return n * n
end

return diff