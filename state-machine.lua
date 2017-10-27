

function is_even_num()
    ::s1:: do
    local c = io.read(1)
    if c == '0' then goto s2
    elseif c == nil then
        print('ok')
        return
    else 
        goto s1
    end

    ::s2:: do
    local c1 = io.read(1)
    if c1 == '0' then
        goto s1
    elseif c == nil then
        print('not ok')
        return
    else 
        goto s2
    end

    goto s1
end