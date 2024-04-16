def digit_list(int)
  int.to_s.chars.map do |num|
    num.to_i
  end
end

# puts digit_list(12345)
p digit_list(375290)