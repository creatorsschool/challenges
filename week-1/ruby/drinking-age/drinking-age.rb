def allowed_to_drink(age)
  if age < 18
    "You're not allowed to drink!"
  elsif age >= 18
    "You're allowed to drink!"
  end
end

puts "How old are you?"
user_input = gets.chomp.to_i

puts allowed_to_drink(user_input)
