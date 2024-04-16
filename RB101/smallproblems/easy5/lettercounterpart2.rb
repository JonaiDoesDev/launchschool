ALPHABET = ("a".."z").to_a


def clean_up(string)
  string.chars.select do |element|
  ALPHABET.include?(element.downcase)
  end.join(' ')
end

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