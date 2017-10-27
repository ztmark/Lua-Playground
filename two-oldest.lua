
function twoOldestAges(ages)
  local r = {math.mininteger, math.mininteger} 
  for _,v in pairs(ages) do
    print(r[1], r[2])
    if v > r[2] and v > r[1] then
        r[1] = r[2]
        r[2] = v
    elseif v > r[1] then
        r[1] = v
    end
    
  end
  return r
end

function twoOldestAges1(ages)
    table.sort( ages, function(a, b) 
         return (a > b)
    end )
  return {ages[2], ages[1]}
end


l = twoOldestAges({1,5,87,45,8,8})
l2 = twoOldestAges1({1,5,87,45,8,8})
print("=====")
print(l[1], l[2])
print("-----")
print(l2[1], l2[2])