munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



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

each possibly use map!...maybe each, iterate, add "age _group" - KEY












=end