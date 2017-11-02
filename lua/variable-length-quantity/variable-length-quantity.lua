
local vlq = {}

function vlq.encode(t)
    local res = {}
    for i = #t, 1, -1 do
        encodeOneInteger(res, t[i])
    end
    return res
end

function encodeOneInteger(t, n)
    local last = true
    repeat
        local x = n & 0x7f
        if not last then
            x = x ~ 0x80
        end
        last = false
        table.insert(t, 1, x)
        n = n >> 7
    until n == 0
end

function vlq.decode(t)
    if t[#t] & 0x80 ~= 0 then
        error('incomplete byte sequence')
    end
    local res = {}
    local n = 0
    for i, v in ipairs(t) do
        if v & 0x80 ~= 0 then
            n = (n << 7 ~ (v ~ 0x80))
        else
            n = (n << 7) ~ v
            table.insert(res, n)
            n = 0
        end
    end
    return res
end

return vlq