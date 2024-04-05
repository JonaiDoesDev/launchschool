[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    p element1
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]