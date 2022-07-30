# Array example

[1, 2, 3,].any? do |num|
  num > 2
end

# Hash example

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|

  value.size > 4
end
