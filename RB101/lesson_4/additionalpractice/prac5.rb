flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


puts flintstones.index {|item| item[0, 2] == 'Be' }