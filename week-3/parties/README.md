# Parties

A web application for your parties!

## Part I

Create a web application where you can see the list of available parties and create new ones.

Features:

* Page with a list of all available parties.
* Page with a form to insert new parties.

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

get '/parties/form' do
  erb :form
end

get '/parties/new' do
  parties << Party.new ... 
  redirect '/'
end
```

**Important:** For the creation of parties you need to run with `ruby app.rb` instead of `shotgun app.rb`.

## Part II

Force the user to insert his username and password in order to create a party. Add this extra fields to your new party form.

You should validate this username and password. Your app should have something similar to this:

```ruby
username = 'gabrielpoca'
password = '123456'

get '/parties/new' do
  if params[:username] != username || params[:password] != pasword
    @error_message = 'Wrong credentials'
    erb :form
  else
    parties << Party.new ...
    redirect '/'
  end
end
```
