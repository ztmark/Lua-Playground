

local wordcount = {}

function wordcount.word_count( s )
    local res = {}
    for v in string.gmatch(s, "%w+") do
        local key = string.lower(v)
        local val = res[key] or 0
        res[key] = val + 1
    end
    return res
end


return wordcount