arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

puts arr.select do |elements|
  elements.sort_by |array|
    array.odd?
end
end
