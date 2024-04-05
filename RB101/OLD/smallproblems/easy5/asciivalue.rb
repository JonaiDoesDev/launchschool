def ascii_value(string)
  string.chars.map { |char| char.ord}.sum
end

p ascii_value("Four score")
p ascii_value('Launch School')
