# Create a shopping list with items as strings
shopping_list = ['Beer', 'Water', 'Cookies']

# Print total number of items in shopping list
shopping_list_amount = shopping_list.size
puts "I have to buy #{shopping_list_amount} items."

# Confirm if 'Chips' is on the shopping list
list_has_chips = shopping_list.include? "Chips"
puts "Chips on list? " + list_has_chips.to_s

# Add 'Chips' to the end of the shopping list
shopping_list << "Chips"

# Confirm if last item was added
puts shopping_list.last

# Print list of items in shopping list
list_single_line = shopping_list.join ", "
puts "Items: " + list_single_line

# Print each item on shopping list
shopping_list.each do |item|
  puts "-" + item
end
