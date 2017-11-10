

local Demo = {}

Demo.mt = {}

Demo.mt.__tostring = function (d)
    return d.str
end

Demo.prototype = {name = "Mark", age = 100}

Demo.mt.__index = function (table, key)
    return Demo.prototype[key]
end

function Demo.new(a)
    local obj = {}
    obj.str = a
    setmetatable(obj, Demo.mt)
    return obj
end


return Demo

