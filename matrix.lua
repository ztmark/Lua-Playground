


function matrix_muliply(a, b)
    local c = {}
    for i = 1, #a do
        local resultline = {}
        for k, va in pairs(a[i]) do
            for j, vb in pairs(b[k]) do
                local res = (resultline[j] or 0) + va * vb
                resultline[j] = (res ~= 0) and res or nil
            end
        end
    end
end
