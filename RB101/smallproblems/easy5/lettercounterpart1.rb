
def letter_counter(string)
hash = {
  4 => 1
}

string_array = string.split
string_array.each do |word|
  if hash.keys.include?(4)
    puts "hello"
  end
end

end


letter_counter('Four score and seven.')













=begin
- define a method that takes a string separated by at least 1 space
- break that long string into separated words
- count the characters that make up each word
- build a hash that saves how many times a word of a specifc size happens; subprocess?
- print said hash



START

SET hash = {}
SET array = string.split
WHILE arry <= array.length
  IF array[iterator] count is hash.key?(count) 
    hash[count] = value + 1
  ELSE IF array[iterator] count is NOT hash.key?
    hash[iterator] = 1

    PRINT hash
end
=end



