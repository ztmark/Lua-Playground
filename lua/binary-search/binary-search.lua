

return function(arr, t) 
    local low = 1
    local high = #arr

    while low <= high do
        local mid = low + math.floor((high - low) / 2)
        local tmp = arr[mid]
        if tmp == t then
            return mid
        elseif tmp < t then
            low = mid + 1
        else
            high = mid - 1
        end
    end

    return -1

end