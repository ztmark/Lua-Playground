
local beer = {}

local s0 = "%d bottle of beer on the wall, %d bottle of beer."
local s1 = "%d bottles of beer on the wall, %d bottles of beer."
local s2 = "Take one down and pass it around, %d bottles of beer on the wall.\n"
local s21 = "Take one down and pass it around, 1 bottle of beer on the wall.\n"
local s3 = "Take it down and pass it around, no more bottles of beer on the wall.\n"
local s4 = "No more bottles of beer on the wall, no more bottles of beer."
local s5 = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"


function beer.verse(n)
    if n == 0 then
        return s4 .. "\n" .. s5
    elseif n == 1 then
        return string.format(s0, n, n) .. "\n" .. s3
    elseif n == 2 then
        return string.format(s1, n, n) .. "\n" .. s21
    else
        return string.format(s1, n, n) .. "\n" .. string.format(s2, n - 1)
    end

end


function beer.sing(s, e)
    local res = ""
    if e == nil then
        e = 0
    end
    for i = s, e, -1 do
        res = res .. beer.verse(i) .. "\n"
    end
    return string.sub(res, 1, #res - 1)
end



return beer