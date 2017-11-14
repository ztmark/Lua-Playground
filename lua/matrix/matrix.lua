

return function (s)
    local nums = {}
    for w in string.gmatch(s, "%d+") do
        table.insert(nums, tonumber(w))
    end
    local idx = string.find(s, "\n")
    local colNum = math.floor(idx / 2)
    local rowNum = math.floor(#nums / colNum)
    local rows = {}
    local columns = {}
    for i = 1, rowNum do
        rows[i] = {}

        for j = 1, colNum do
            table.insert(rows[i], nums[(i - 1) * colNum + j])

            if columns[j] == nil then
                columns[j] = {}
            end
            columns[j][i] = nums[j + (i - 1) * colNum]
        end
    end

    return {
        row = function(i) return rows[i] end,
        column = function(i) return columns[i] end
    }

end