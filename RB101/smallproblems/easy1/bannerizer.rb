
def box(text)
  line_horizontal = "-#{"-" * (text.size * 2)}"
  line_vertical = "|#{" " * (text.size * 2)}|"

  puts line_horizontal
  puts line_vertical
  puts "|           #{text}                             |"
  puts line_vertical
  puts line_horizontal

end


box("This is what I decided to write in here.")