def reversed!(number)
  reversed_number = number.to_s.reverse!.to_i
  puts reversed_number
end


reversed!(12345) == 54321
reversed!(12213) == 31221
reversed!(456) == 654
reversed!(12000) == 21 # No leading zeros in return value!
reversed!(12003) == 30021
reversed!(1) == 1