def is_odd?(number)
    if number % 2 == 0
        puts "false"
    else
        puts "true"
    end

end

is_odd?(2)    # => false
is_odd?(2)    # => false
is_odd?(2)    # => false
is_odd?(5)    # => true
is_odd?(-17)  # => true
is_odd?(-8)   # => false
is_odd?(0)    # => false
is_odd?(7)    # => true