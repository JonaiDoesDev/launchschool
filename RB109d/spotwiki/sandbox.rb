diff = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |arr|
  arr.each do |key, value|
    value + 1
end
end

puts diff
