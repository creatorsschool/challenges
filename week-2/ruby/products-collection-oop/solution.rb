class Product
  attr_reader :name, :price, :brand

  def initialize(options)
    @name = options[:name]
    @price = options[:price]
    @brand = options[:brand]
  end

  def to_s
    "#{@name}, €#{@price}"
  end
end

class ProductList
  def initialize(products)
    @products = products.map do |product|
      Product.new(product)
    end
  end

  def count
    @products.size
  end

  def get_names
    @products.map do |product|
      product.name
    end
  end

  def filter_by_brand(brand)
    @products.select do |product|
      product.brand == brand
    end
  end

  def count_by_brand(brand)
    filter_by_brand(brand).size
  end

  def group_by_brand
    @products.group_by do |product|
      product.brand
    end
  end

  def cheapest
    @products.min do |a, b|
      a.price <=> b.price
    end
  end

  def most_expensive
    @products.max do |a, b|
      a.price <=> b.price
    end
  end

  def price_between(min, max)
    @products.reject do |product|
      product.price < min || product.price > max
    end
  end

  def avg_price
    total = @products.reduce(0) do |memo, product|
      memo += product.price
    end
    (total / @products.size).round(2)
  end
end

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

products_list = ProductList.new(products)

puts %Q(
  Product count: #{ products_list.count }

  Product names: #{ products_list.get_names }

  Only 'LG' brand: #{ products_list.filter_by_brand('LG') }

  Count 'Samsung' brand: #{ products_list.count_by_brand('Samsung') }

  Group by brand: #{ products_list.group_by_brand }

  Cheapest: #{ products_list.cheapest }

  Most expensive: #{ products_list.most_expensive }

  Price between 200 and 400: #{ products_list.price_between(200, 400) }

  Average price: #{ products_list.avg_price }
)
