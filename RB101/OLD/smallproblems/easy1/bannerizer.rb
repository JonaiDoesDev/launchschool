vowels = ["a", "e", "i", "o", "u"]

message = "sfjkhdsjkfhuefhjdfhjksdhfjkdshfjueuhfjkdsjkfhjfhdsjfhdsjfhuejbn"

def truncate(text)
  text.size > 25
  text =  text[0, 20]
  puts "| #{text} |"
end


def box(text)
  vowels = ["a", "e", "i", "o", "u"]

  line_horizontal = "+#{"-" * (text.size + 2)}+"
  line_vertical = "|#{" " * (text.size + 2)}|"

  puts line_horizontal
  puts line_vertical
  truncate(text)
  puts line_vertical
  puts line_horizontal

end



box("This is a smaller message this is also a longer message")

this is an example