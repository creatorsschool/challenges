def calculate_total(list)
  total = 0

  list.each do |item|
    total += item[:price]
  end

  total
end

products = [
  { name: "Beer", price: 0.80 },
  { name: "Chips", price: 1.20 },
  { name: "Water", price: 0.35 },
  { name: "Cookies", price: 1.75 }
]

puts "Total: #{ calculate_total(products) }"
