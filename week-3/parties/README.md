# Parties

A web application for your parties!

## Part I

Create a web application where you can perform all the CRUD operations for your parties.

Features:

* List all the available parties in a compact format.
* View all the details of a single page.
* Edit a party.
* Create a new party.
* Remove a party.

You application need to have all the following routes:

```ruby
require 'sinatra'

class Party
  def initialize(name, description, date_time)
    ...
  end
end

parties = [
  ...
]

# list of all parties
get '/' do
  ...
end

# show individual post
get '/:id' do
  ...
end

# form to edit a single party
get '/:id/edit' do
  ...
end

# form to create a new party
get '/new do
  ...
end

# method to save a new party, the /new route should point here
post '/create' do
  ...
end

# method to update an existing party, the /:id/edit should point here
post '/:id/update' do
  ...
end
```

**Important:** To test the create/remove you need to run with `ruby app.rb` instead of `shotgun app.rb`.

## Part II

You have now implemented all the CRUD operations for the parties using the notion of a REST interface. You should read about the meaning of REST.

It's now time to move into a different kind of problems.

* Create a field on the navbar to filter the list of parties by name and description.
* Create two buttons to order the products by date ASC and DESC.
* Make parties that already happen disappear.

## Part III

Parties are cool. But now you need to know how many people are joining. Change the existing party class to allow you to insert and remove attending users.

Create a form on the party page that allows user to indicate that they're going by entering their email. Also, add a list of already going users and a button to allow remove a user.

Make sure the emails are unique.

Add a counter on the parties list page indicating the number of attending users.

Use the following code as a reference:

```ruby

class Party
  def initialize(name, description, date_time)
    ...
    @users = []
  end

  def add_user(email)
    ...
  end

  def remove_user(email)
    ...
  end

  def attending_users_count
    ...
  end
end
```

## Part IV

Add latitude and longitude to your party. Add follow [this](https://developers.google.com/maps/documentation/javascript/tutorial) tutorial in order to add a map to your party's details.

## Part V - Flash messages

Add flash messages for success and error. Follow [this](http://code.tutsplus.com/tutorials/singing-with-sinatra-the-encore--net-19364) tutorial on the section "Flash Messages Error and Success".
