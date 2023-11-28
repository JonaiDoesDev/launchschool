yo = [1, 2, 2, 20, 6, 20, 2, 6, 2]

def pairs(arr)
  arr.select do |element|
    arr.count(element) >= 2
  end
end

another = pairs(yo).select do |num|
  num if pairs(yo).count(num) == 2
end

p another


