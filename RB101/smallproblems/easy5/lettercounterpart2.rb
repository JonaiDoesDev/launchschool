
def word_sizes(string)
  clean_word =''
  string.split.each do |element|
    clean_word = element.delete('^A-Za-z')
  end
  p clean_word
  counting_hash = {}

  clean_word.split.each do |word|
    if counting_hash.key?(word.length)
      counting_hash[word.length] = counting_hash[word.length] + 1
    else
      counting_hash[word.length] = 1
    end
  end
    counting_hash
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')