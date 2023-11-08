def short_long_short(word1, word2)
  captured = ""
  if word1.length < word2.length
    captured << word1
    captured << word2
    captured << word1
  else
    captured << word2
    captured << word1
    captured << word2
  end
  return captured
end

puts short_long_short('', 'xyz')