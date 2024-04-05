=begin
PEDAC

Understanding the PROBLEM

Input: a hash where each entry has its own hash of items
example: 
hash = {"Herman" => { "age" => 32, "gender" => "male" }

output: same hash as above but with a new item added to the hash
example: 
hash = {"Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult"}

EXAMPLES/Rules
- the output is a hash of hashes
- MODIFYING the current hash; adding a new item; key value pair
- new item can be kid, adult, or senior
- iterate through age key/value to determine if kid, adult, or senior (?)
- Use each or map! (?)
- possible another hash with kid, adult, senior values
- between 0 and 17 == kid
- between 18 and 60 == adult
- 61 and older == senior

BONUS "SANDBOX"

age = rand(0..100)

if age <= 17
  puts "Kid"
elsif age.between?(18, 60)
  puts "adult"
else
  puts "senior"
end


case age
when 0..17
  puts "Kid"
when 18..60
  puts "Adult"
when 61..1000
  puts "Senior"
end

puts age

{ "Herman" => { "age" => 32, "gender" => "male"} look through
Herman for age key and value, if that value is x add age_group => "kid", "adult", or "senior"


ALGORITHM (STEPS)

- iterate through each hash sub hash to find 'age'
- compare the value of age against case
- add a hash item with the output from case
    
    
CODE
=end
    
    munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
      "Lily" => { "age" => 30, "gender" => "female" },
      "Grandpa" => { "age" => 402, "gender" => "male" },
      "Eddie" => { "age" => 10, "gender" => "male" },
      "Marilyn" => { "age" => 23, "gender" => "female"}
    }

  
  
    munsters.each do |key, value|
        case value["age"]
        when 0..17
          value["age_group"] = "Kid"
        when 18..60
          value["age_group"] = "Adult"
        when 61..1000
          value["age_group"] = "Senior"
        end
    end
    
    puts munsters
    