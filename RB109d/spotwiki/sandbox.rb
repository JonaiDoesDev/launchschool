def method(string)
  string.map do |element|
    element.size
end
end
p method("to be to not to be")