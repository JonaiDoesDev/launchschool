def xor?(x, y)
  if x == true || y == true
    puts !!true
  elsif x == true || y == false
    puts !!true
  elsif x == false || y == true
    puts !!true
  else
    puts !!false
end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false