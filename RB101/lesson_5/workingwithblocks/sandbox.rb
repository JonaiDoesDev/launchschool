# [{ a: 'ant', b: 'elephant' }, { c: 'bat', z: 'zebra' }, {d: 'dog', e: "equestrian"}, {f: 'tola', g: 'garfield'}].select do |hash|
#   hash.all? do |key, value|
#     value[0] == key.to_s
#   end
# end



# arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

# arr.sort_by do |sub_arr|
#   sub_arr.map do |num|
#     num.to_i
#   end
# end


# [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
#   element1.each do |element2|
#      element2.partition do |element3|
#      p element3.size > 0
#     end
#   end
# end

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    el
end
end