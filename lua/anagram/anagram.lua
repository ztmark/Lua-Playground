
local anagram = {}

local function build(s)
    local res = {}
    for i = 1, #s do
        local c = string.lower(string.char(string.byte(s, i)))

        if res[c] == nil then
            res[c] = 1
        else
            res[c] = res[c] + 1
        end
    end
    return res
end

function anagram:new(s)
    local t = build(s)
    self.__index = self
    setmetatable(t, self)
    return t
end

function anagram:match(t)
    local res = {}
    for i,v in pairs(t) do
        local tmp = build(v)
        local add = true

        for i, r in pairs(tmp) do
            if self[i] ~= r then
                add = false
                break
            end
        end

        if add then
            for i, r in pairs(self) do
                if r ~= tmp[i] then
                    add = false
                    break
                end
            end
        end

        if add then
            table.insert(res, v)
        end

    end
    return res
end

return anagram