# Products collection
---

Implement some methods to make operations/queries in a collection of products.

> Topics: arrays, hashes, strings, comparison operators, enumerable

**Implement the following methods that make use of the products collection:**
- `count(products)`
  - given a list of `products` (array) as argument
  - return the total number (integer) of products
- `get_names(products)`
  - given a list of `products` (array) as argument
  - returns a list of all product names (array of strings)
- `filter_by_brand(products, brand)`
  - given a list of `products` (array) and a brand name (string) as arguments
  - returns a list of `products` (array) with that brand (array of hashes)
- `count_by_brand(products, brand)`
  - given a list of `products` (array) and a brand name (string) as arguments
  - returns the total number (integer) of products with that brand
- `group_by_brand(products)`
  - given a list of `products` (array) as argument
  - return a hash of products groupped by brand
- `cheapest(products)`
  - given a list of `products` (array) as argument
  - returns a single product (hash) with the lowest price value
- `most_expensive(products)`
  - given a list of `products` (array) as argument
  - returns a single product (hash) with the highest price value
- `price_between(products, min, max)`
  - given a list of `products` (array) and a `min` price (integer) and a `max` price (integer) as arguments
  - returns a list of `products` (array) with price higher than `min` and lower than `max`
- `avg_price(products)`
  - given a list of `products` (array)
  - returns the average price (float) of all those products rounded to 2 decimal places

**Final output should be:**
```ruby
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
```

**Test data:**
```ruby
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
```
