nothing = [1, 2, 3]

nothing.each_with_object({}) do |value, run|
 p run[value[0]] = value
end

