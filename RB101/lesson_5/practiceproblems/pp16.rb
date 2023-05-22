

def uuid_code()
string_length1 = 8
string_length2 = 4
string_length3 = 12

string1 = rand(36**string_length1).to_s(36)
string2 = rand(36**string_length2).to_s(36)
string3 = rand(36**string_length2).to_s(36)
string4 = rand(36**string_length2).to_s(36)
string5 = rand(36**string_length3).to_s(36)
  puts "#{string1}-" + "#{string2}-" + "#{string3}-" + "#{string4}-" + "#{string5}"
end

puts uuid_code()