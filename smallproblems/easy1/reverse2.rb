def reverse(string)
    index = 0
    array = string.split(" ")
    array.map {|element| element.length}
    if array[index].to_i <= 5 
        array[index].reverse
end
end


puts reverse("Jonai is the man")