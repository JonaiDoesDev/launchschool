ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

values = []


selected_values = ages.keep_if { |key, value| value < 100 }
puts selected_values