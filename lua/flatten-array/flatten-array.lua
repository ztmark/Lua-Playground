

function addAll(arr1, arr2)
    for _, v in ipairs(arr2) do
        arr1[#arr1 + 1] = v
    end
end

function flattern(arr)
    local res = {}
    for i = 1, #arr do
        if type(arr[i]) == "table" then
            addAll(res, flattern(arr[i]))
        else
            res[#res + 1] = arr[i]
        end
    end
    return res

end

return flattern