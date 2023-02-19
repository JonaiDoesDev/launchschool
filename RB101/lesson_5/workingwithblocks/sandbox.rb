# [{ a: 'ant', b: 'elephant' }, { c: 'bat', z: 'zebra' }, {d: 'dog', e: "equestrian"}, {f: 'tola', g: 'garfield'}].select do |hash|
#   hash.all? do |key, value|
#     value[0] == key.to_s
#   end
# end



arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
