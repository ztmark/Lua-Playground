

function animals(heads, legs)
  if heads == 0 and legs == 0 then
    return {0,0}
  elseif heads == 0 or legs == 0 then
    return "No solutions"
  end
  local cows = (legs - 2 * heads) / 2
  local chick = heads - cows
  if cows < 0 or chick < 0 or math.fmod(cows,1) ~= 0 or math.fmod(chick,1) ~= 0 then
    return "No solutions"
  end
  return {chick, cows}
end
