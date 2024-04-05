# def reverse(string)
#     index = 0
#     array = string.split(" ")
#     array.map {|element| if element.length >= 5; element.reverse}
#     if array[index].to_i <= 5 
#         array[index].reverse
#         # print string
#         index =+ 1
#     # break if index == array.length
# end
# end


# puts reverse("Jonai is the man")

def reverse_words(string)
    words = []
    string.split(" ").each do |word|
        word.reverse! if word.size >= 5
        words << word
    end
    
    words.join(" ")
    
end

puts reverse_words("Our doggies are awesome")
