




function polynomial(p, x)
    if #p == 0 then
        return 0
    end
    res = p[1]
    xx = x
    for i = 2, #p do
        res = res + p[i] * xx
        xx = xx * x
    end
    return res
end
