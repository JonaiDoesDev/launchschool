arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]



arr.sort_by do |arries|
  arries.select do |odds|
    odds.odd?
  end
end