# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr.map do |hashes|
#   hashes.map do |_, value|
#     value += 1
#   end
# end



[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
