# Products collection using Object-oriented concepts
---

Implement a class with some instance methods to make operations/queries in a collection of products.

> Topics: arrays, hashes, strings, comparison operators, enumerable, methods, classes, objects

**Details:**
- `Product` class
  - name
  - price
  - brand
- `ProductCollection` class
  - should implement the methods below

**Implement the following methods on ProductCollection class:**
- `count`
  - return the total number (integer) of products
- `get_names`
  - returns a list of all product names (array of strings)
- `filter_by_brand(brand)`
  - returns a list of `products` (array) with that brand (array of hashes)
- `count_by_brand(brand)`
  - returns the total number (integer) of products with that brand
- `group_by_brand`
  - return a hash of products groupped by brand
- `cheapest`
  - returns a single product (hash) with the lowest price value
- `most_expensive`
  - returns a single product (hash) with the highest price value
- `price_between(min, max)`
  - returns a list of `products` (array) with price higher than `min` and lower than `max`
- `avg_price`
  - returns the average price (float) of all those products rounded to 2 decimal places

**Final output should be:**
```ruby

collection = ProductCollection.new(products)

puts %Q(
  Product count: #{ collection.count }

  Product names: #{ collection.get_names }

  Only 'LG' brand: #{ collection.filter_by_brand('LG') }

  Count 'Samsung' brand: #{ collection.count_by_brand('Samsung') }

  Group by brand: #{ collection.group_by_brand }

  Most cheap: #{ collection.cheapest }

  Most expensive: #{ collection.most_expensive }

  Price between 200 and 400: #{ collection.price_between(200, 400) }

  Average price: #{ collection.avg_price }
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
