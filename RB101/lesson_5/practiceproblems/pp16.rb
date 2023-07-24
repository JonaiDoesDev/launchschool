randoms = ('a'..'z').to_a + ('0'..'9').to_a
string_length = 8 
string_length_2 = 4
string_length_3 = 12
key1 = (36**(string_length-1) + rand(36**string_length - 36**(string_length-1))).to_s(36)
key2 = (36**(string_length_2-1) + rand(36**string_length_2 - 36**(string_length_2-1))).to_s(36)
key3 = (36**(string_length_2-1) + rand(36**string_length_2 - 36**(string_length_2-1))).to_s(36)
key4 = (36**(string_length_2-1) + rand(36**string_length_2 - 36**(string_length_2-1))).to_s(36)
key5 = (36**(string_length_3-1) + rand(36**string_length_3 - 36**(string_length_3-1))).to_s(36)

puts master_key = "#{key1}-" + "#{key2}-" + "#{key3}-" + "#{key4}-" + "#{key5}"