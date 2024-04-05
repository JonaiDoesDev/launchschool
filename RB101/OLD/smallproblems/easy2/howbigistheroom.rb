  puts "Enter the length of the room in meters"
  length = gets.chomp.to_i
  puts "Enter the width of the room in meters"
  width = gets.chomp.to_i


def room_size(length, width)
    room_size_meters = length * width
    room_size_feet = room_size_meters * 10.7639 
    puts "The size of the room is #{room_size_meters} square meters. (#{room_size_feet} square feet)"
end

room_size(length, width)