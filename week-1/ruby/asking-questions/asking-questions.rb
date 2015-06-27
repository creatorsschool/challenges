puts "What's your name?"
name = gets.chomp

puts "Where do you live?"
city = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "Hello #{name}! You're #{age} years old and you live in #{city}! Awesome!"
