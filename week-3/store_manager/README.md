# You're an online store manager

And your job is to manage the available products.

## Exercise 1 - List and insert products

Create a web application where you can see list products and create new ones. You'll need to pages, one to show the list of products and another to create new ones.

You should fill the gaps in the following ruby code.

```ruby
require 'sinatra'

class Product
  attr_reader :id, :name, :price, :brand

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @price = hash[:price]
    @brand = hash[:brand]
  end
end

products = [
  Product.new({ id: 0, name: "samsung galaxy s6 edge", price: 829.90, brand: "samsung" }),
  Product.new({ id: 1, name: "lg g flex", price: 689.90, brand: "lg" }),
  Product.new({ id: 2, name: "apple iphone 6 plus", price: 779.90, brand: "apple" }),
  Product.new({ id: 3, name: "samsung galaxy alpha", price: 589.90, brand: "samsung" }),
  Product.new({ id: 4, name: "nokia lumia 930", price: 489.90, brand: "nokia" }),
  Product.new({ id: 5, name: "sony xperia z3 compact", price: 389.90, brand: "sony" }),
  Product.new({ id: 6, name: "apple iphone 6", price: 779.90, brand: "apple" }),
  Product.new({ id: 7, name: "huawei ascend g7", price: 259.90, brand: "huawei" }),
  Product.new({ id: 8, name: "sony xperia t2 ultra", price: 359.90, brand: "sony" }),
  Product.new({ id: 9, name: "lg g4", price: 589.90, brand: "lg" }),
  Product.new({ id: 10, name: "samsung galaxy note 4", price: 689.90, brand: "samsung" }),
  Product.new({ id: 11, name: "htc one m9", price: 674.90, brand: "htc" }),
  Product.new({ id: 12, name: "apple iphone 5s", price: 589.90, brand: "apple" })
]

get '/' do
  @products = products
  erb :index
end

post '/new' do
  ...
end
```

Don't forget to use a layout, here is a sample code you can use:

```html
<!DOCTYPE html>
<html>
  <title>...</title>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </head>
  <body>
    <%= yield %>
  </body>
</html>
```

Now you need to implement both the list and form views.

## Exercise 2 - Remove products

Now, everything looks ok, but what happens if you can't sell a product anymore? Let's create a way to remove products. You should add a link "Remove" to each product and implement that new route. For now the route should accept the product name and remove it from the list. Use the following as a starting point.

```ruby
get '/remove/:id do
  ...
end

## Exercise 3 - Make a product details page

Now let's create a new page to see each product's detailed information. For this you'll need a new route and a new erb file. Use the following as a starting poing:

```ruby
get '/show/:id do
  ...
end
```

## Exercise 4 - Make a page to edit the product

Let's keep it going. You're almost done with the products CRUD. Now create a route with a form where you can edit a product. For this you'll need to routes, one to show the form with the value already filled for you to edit and another to save the product. Use the following as a referece:

```ruby
get '/edit/:id' do
  @product = # fetch post like you did everywhere else
  erb :edit_form
end

get '/update/:id' do
  products << Post.new(the params shoudl somehow go in here)
  redirect "/show/#{params[:id]}"
end
```

Now, remember that the form should already be filled with the post current values. For this you need to use the `value` attribute on the html input.

Assuming you created a variable called `@product` you can do the following to create an input with the value allready filled.

```html
<form method="GET" action="/update/<%= @product.id %>">
  ...
  <input name="name" type="text" value="<%= @product.name %>"
  ...
</form>
```
