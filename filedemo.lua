
-- local file = io.open("test.txt", "w")
-- file:write("testing 123\n")
-- file:write("another line\n")
-- file:close()

local file = io.open("a.html", "r")
for line in file:lines() do
    print(line)
end
