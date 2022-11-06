def digilist(number)
    number.to_s.chars.map(&:to_i)
end

print digilist(1234)