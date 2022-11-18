flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = Hash.new

flintstones.each_with_index {|item, i| 
  flintstones_hash[item] = i}

  puts flintstones_hash