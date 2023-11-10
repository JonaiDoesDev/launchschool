def multisum(number)
  range = (1..number).to_a
  multiples = range.select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  multiples.sum
end


p multisum(1000)