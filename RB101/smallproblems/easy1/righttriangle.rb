



def right_t(number)
  counter = number
  loop do
    puts ("*" * counter)
    counter += 1
    break if counter == number
  end
end

right_t(9)
