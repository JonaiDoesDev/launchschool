a = %w(a b c d e)
# puts a.fetch(7) #nil
puts a.fetch(7, 'beats me') #'beats me'
puts a.fetch(7) { |index| index**2 } # 49


I think these are all right based on the ruby docs


puts a.fetch(7) # this one actually returns an error "index outside of array bounds." makes sense

