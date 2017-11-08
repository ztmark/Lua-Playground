





function Octal(s) 
    return {
        to_decimal = function ()
            if s == nil or #s <1 then
                return 0
            end
            local res = 0
            s = string.reverse(s)
            local pow = 0
            for i = 1, #s do
                local v = tonumber(string.char(string.byte(s, i)))
                if v == nil or v > 7 then
                    return 0
                end
                res = res + v * 8 ^ pow
                pow = pow + 1
            end
            return res
        end
    }
end


return Octal