ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

values = []


ages.each_value { |value| values.push(value) }

added_up = values.sum

puts added_up

