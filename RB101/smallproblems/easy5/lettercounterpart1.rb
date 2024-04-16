
def word_sizes(string)
  # separate_words = string.split
  counting_hash = {}

  string.split.each do |word|
    if counting_hash.key?(word.length)
      counting_hash[word.length] = counting_hash[word.length] + 1
    else
      counting_hash[word.length] = 1
    end
  end
    counting_hash
end


# p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')







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



