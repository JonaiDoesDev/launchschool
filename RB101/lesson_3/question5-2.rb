greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there' ", this is another line to add"
puts informal_greeting  #  => "hi there"
puts greetings
