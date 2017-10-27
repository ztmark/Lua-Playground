
local house = {}

local rhymes = {
    {" the house ", "Jack built"},
    {" the malt\n", "lay in"},
    {" the rat\n", "ate"},
    {" the cat\n", "killed"},
    {" the dog\n", "worried"},
    {" the cow with the crumpled horn\n", "tossed"},
    {" the maiden all forlorn\n", "milked"},
    {" the man all tattered and torn\n", "kissed"},
    {" the priest all shaven and shorn\n", "married"},
    {" the rooster that crowed in the morn\n", "woke"},
    {" the farmer sowing his corn\n", "kept"},
    {" the horse and the hound and the horn\n", "belonged to"}
}


function house.verse(n)
    local infix = "that "
    local res = {"This is"}
    for i = n, 1, -1 do
        table.insert(res, rhymes[i][1])
        table.insert(res, infix)
        table.insert(res, rhymes[i][2])
    end
    table.insert(res, ".")
    return table.concat(res, "")
end


function house.recite()
    local res = {}
    for i = 1, #rhymes do
        table.insert(res, house.verse(i))
    end
    return table.concat(res, "\n")
end

return house
