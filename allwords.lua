

function allwords()
    local line = io.read()
    local pos = 1
    return function ()
        while line do
            local w, e = string.match(line, "(%w+)()", pos)
            if w then
                pos = e
                return w
            else
                line = io.read()
                pos = 1
            end
        end
        return nil
    end
end


for word in allwords() do
    print(word)
end