# arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

# # something to look into
# arr[2][:a] = 'ant'  

# p arr

arr = [[1], [2], [3]].freeze
arr << 4
arr # => [[1], [2], [3, 4]]