# Parties

A web application for your parties!

## Part I

Create a web application where you can do all the CRUD operation on the parties resource.

Features:

* Page with a list of all available parties.
* Page with to show a single party.
* Page to create new parties.
* Page to edit parties.
* Buttons to remove a party.

You the following as a starting point:

```ruby
require 'sinatra'

parties = [
  ...
]

get '/' do
  @parties = #
  erb :index
end

get '/new do
  erb :form
end

get '/create do
  parties << Party.new ... 
  redirect '/'
end
```

**Important:** For the creation of parties you need to run with `ruby app.rb` instead of `shotgun app.rb`.


## Part II

* Implement a feature to search for parties by name.
* Implement a feature to order parties by date ASC and DESC.
* Implement a feature to hide a party is it already happen.
