products = [
  { name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" },
  { name: "LG G Flex", price: 689.90, brand: "LG" },
  { name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" },
  { name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" },
  { name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" },
  { name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" },
  { name: "Apple iPhone 6", price: 779.90, brand: "Apple" },
  { name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" },
  { name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" },
  { name: "LG G4", price: 589.90, brand: "LG" },
  { name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" },
  { name: "HTC One M9", price: 674.90, brand: "HTC" },
  { name: "Apple iPhone 5S", price: 589.90, brand: "Apple" }
]

def count(products)
  products.size
end

def get_names(products)
  products.map do |product|
    product[:name]
  end
end

def filter_by_brand(products, brand)
  products.select do |product|
    product[:brand] == brand
  end
end

def count_by_brand(products, brand)
  filter_by_brand(products, brand).size
end

def group_by_brand(products)
  products.group_by do |product|
    product[:brand]
  end
end

def cheapest(products)
  products.min_by do |product|
    product[:price]
  end
end

def most_expensive(products)
  products.max_by do |product|
    product[:price]
  end
end

def price_between(products, min, max)
  products.reject do |product|
    product[:price] < min || product[:price] > max
  end
end

def avg_price(products)
  total = products.reduce(0) do |memo, product|
    memo += product[:price]
  end
  (total / products.size).round(2)
end

puts %Q(
  Product count: #{ count(products) }

  Product names: #{ get_names(products) }

  Only 'LG' brand: #{ filter_by_brand(products, 'LG') }

  Count 'Samsung' brand: #{ count_by_brand(products, 'Samsung') }

  Group by brand: #{ group_by_brand(products) }

  Most cheap: #{ cheapest(products) }

  Most expensive: #{ most_expensive(products) }

  Price between 200 and 400: #{ price_between(products, 200, 400) }

  Average price: #{ avg_price(products) }
)
