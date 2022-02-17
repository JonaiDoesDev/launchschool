array_of_strings = ["hello", "how are you", "good", "ok good to hear", "alrighty then"]



def concat_the_strings(array_of_strings)
  iterator = 0
  string = ''
  if iterator != array_of_strings.length do
  array_of_strings.fetch(iterator) { |iterator| iterator.append(string) }
  iterator += 1
end
end
end

p concat_the_strings(array_of_strings)

