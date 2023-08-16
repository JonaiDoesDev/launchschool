arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |subs|
  one_up_hash = {}
  subs.each do |key, value|
    one_up_hash[key] = value + 1
  end
  one_up_hash
end

