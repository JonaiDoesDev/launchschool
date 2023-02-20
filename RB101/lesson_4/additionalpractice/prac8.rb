# words = "the flintstones rock"




def titleize(str)
  str.split.map do |element| 
  element.capitalize
end.join(" ")
end

puts titleize("world cup started today")

