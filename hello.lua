#!/usr/local/bin/lua5.3
--[[
print("Hello World") -- hello world
]]

-- print("hello " .. _VERSION)
-- print("Running " .. arg[0])


local meta = {}
local ss = {}

function ss.new( s )
    local superstring = {}
    superstring.s = s
    setmetatable(superstring, meta)
    return superstring
end

function ss.add( s1, s2 )
    return s1.s .. s2.s
end

meta.__add = ss.add

meta.__index = function ( table, key )
    if key == "reverse" then
        return string.reverse(table.s)
    end
end

firstName = ss.new("Mark")
lastName = ss.new("Z")
print(firstName + lastName)
print(firstName.reverse)