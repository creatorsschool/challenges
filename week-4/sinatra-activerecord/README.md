# Sinatra + Activerecord
---

### Tutorial:

Example use of **ActiveRecord** with **Sinatra**.

#### 1 - Project setup

- Create a new folder for your project. Example: **/sinatra-activerecord**
- Initialize a git repository on your project folder: `git init`

#### 2 - Add Gemfile

- Add a `Gemfile` file to your project folder.

`Gemfile`
```ruby
source 'https://rubygems.org'

gem "sinatra"
gem "sinatra-activerecord"
gem "sqlite3"
gem "rake"
```

- Run `bundle install` from your terminal, on your project folder.
- Commit the code to git:
```
git add .
git commit -m "Adds Gemfile"
```

#### 3 - Add the main view

- Create a new file on your project folder: `views/index.erb`.

- Add the following contents:

```html
<h1>Users</h1>

<form class="user-form" action="/users/create" method="post">
  <h2>New user</h2>
  <label>
    Name: <input type="text" name="name">
  </label>
  <label>
    Email: <input type="text" name="email">
  </label>
  <button type="submit">
    Create new user
  </button>
</form>

<div class="users-list">
  <h2>All users</h2>
  <ul>
    <% @users.each do |user| %>
      <li>
        <p><strong><%= user.name %></strong></p>
        <p><%= user.email %></p>
      </li>
    <% end %>
  </ul>
</div>
```

- Commit the code to git:
```
git add .
git commit -m "Adds index view"
```

#### 4 - Add a Rakefile

Add a new file `Rakefile` with the following contents:
```ruby
require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require "./app"
  end
end
```

#### 5 - Update the database schema

Run from your terminal, on your project folder:
`bundle exec rake db:create_migration NAME=create_users`

This will execute a task that generates a database migration file that describes
updates that will be applied to the database schema.

Open the generated file at `/db/migrate/*_create_users.rb`.

Add the following code to the file:
```ruby
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :name
      table.string :email
    end
  end
end
```

This code will create a table `users` with a `name` and a `email` columns of
type `string`.

Now you need to apply this migration to update the database.

- Run from your terminal:
`bundle exec rake db:migrate`

- Commit the code to git:
```
git add .
git commit -m "Adds users table migration"
```

#### 6 - Add your main application

Create a new **/app.rb** file on your project folder.

Read and add the following code to the file.

`app.rb`
```ruby
require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "example.sqlite3"}
```

This first part will load the required dependencies and configure the `sqlite3`
database adapter for `sinatra/activerecord` and using the `example.sqlite3`
database.


```ruby
class User < ActiveRecord::Base
end
```

Defining classes (`User`) that inherit behaviour from `ActiveRecord::Base` will
allow manipulation of the related table (`users`) from your code.


```ruby
get "/" do
  @users = User.all
  erb :index
end

post "/users/create" do
  user = User.new name: params[:name], email: params[:email]
  user.save
  redirect "/"
end

```

This last part defines some basic routes that make use of the `User` class to
access and modify database content.

- Commit the code to git:
```
git add .
git commit -m "Adds main application"
```

#### 7 - Test your application

Run your app: `ruby app.rb`
