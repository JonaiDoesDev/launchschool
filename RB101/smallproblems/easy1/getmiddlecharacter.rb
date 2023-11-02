def get_middle(string)
  middle_char = string.size / 2

  if string.size.even?
  puts string[middle_char - 1] + string[middle_char]
  else string.size.odd?
  puts string[middle_char]
  end
end

get_middle("jonais")