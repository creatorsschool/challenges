# Sinatra to Rails
## Skeleton
There aren't a lot of conventions in sinatra, which means you can organize your application in whatever way you like. This isn't a particularly good thing. A skeleton, like the one you saw, can provide some conventions and organizations that everyone in the community would follow.

Rails comes with an app generator, and for that reason all rails apps are organized in almost identical ways. Create a new app with the following command:

```
rails new blog
cd blog
```

You can run your application with:


```
bundle install
rails server
```

And visit `http://localhost:3000`.

## Routes, controllers and views

You can probably guess by know what you're about to build. But before that let's assign you sinatra knowledge into the rails land. The following code is pretty simple in sinatra land:

```ruby
get "/" do
  erb :index
end
```

This piece of code listens for a request to "/" and prints the `index.erb` to the browser.

In Rails, this piece of code gets divided into two parts: the route and the controller.<br>The route assigns an action to a request (we'll get into controllers soon'). Add the following to `config/routes.rb`, inside the existing block:

```ruby
get '/posts', to: 'posts#index'
```

Open the url `http://localhost:3000/posts`. It will give you an error saying that PostsController isn't defined. That's fine, let's define it.
Create a file in `app/controllers/posts_controller.rb` and place the following code inside it:

```ruby
class PostsController < ApplicationController
  def index
  end
end
```

Open the url again. It will show another error about a template being missing.

Rails automatically renders templates for you, in sinatra you would have to call `render :index`, in Rails he will look for a template file based on the controller name (`PostsControler`) and the action name (`index`). The corresponding view template is `app/view/posts/index.erb`. Create this file and put some HTML in it, like the following:

```html
<h1>Hello World!</h1>
```

Finnaly, now you have it, go visit the same url and give yourself a pat in the back.

One more thing before we finish: Notice that you need to go to the `/posts` path, but we would like to have our `/` redirect to it, place the following code the router:

```ruby
get '/posts', to: 'posts#index'
root to: 'posts#index'
```

## Models
Models are exactly the same as in sinatra. You'll use migrations and ActiveRecord in the same way.

In the sinatra skeleton you would use a rake task to generate migrations. There are even more generators in rails, so let's use the cool one that creates the model and the migration automatically.

To create a model called "Post" with a title and a body run the following command:

```
rails generate model Post title:string body:string
```

Notice the output, it created some files for you. You should check the `app/models` folder, that's where your models are going to be. Notice also the `db/migrate`. That's where your migrations live.

Don't forget to run the migration:

```
rake db:migrate
```

In sinatra land you could `tux` to interact with the models. But rails has it's own console. Run the following command:

```
rails console
```

You can now interact with any Ruby code in your app, including ActiveRecord models. Create some blog posts to display on the application:

```ruby
Post.create title: 'First blog post', body: 'Something really cool!'
Post.create title: 'Second blog post', body: 'Another really cool thing!'
```

## Dynamic Data
We still have an "index" page with only a title thought, so let's add the posts to it. Notice how similar this is to sinatra.

Open the `app/controllers/posts_controller.rb` file and change it to the following:

```ruby
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
end
```

And open the `app/views/controllers/index.erb` and change it to the following:

```html
<h1>Blog</h1>

<ul>
  <% @posts.each do |post| %>
    <li><%= post.title %></li>
  <% end %>
</ul>
```

See how this was mostly the same thing as in Sinatra? Except that you didn't need a `erb :index` in the action.
You should now be able to see the list of posts on the browser.

## Individual Post
We can see each post's title, but not its body. Let's add a new page to display the full content of a post. Start with the router, change the `config/router.rb` into the following:

```ruby
Rails.application.routes.draw do
  get '/posts', to: 'posts#index'
  get '/posts/:id', to: 'posts#show'
  root 'posts#index'
end
```

Notice the line we added, indicating that the route `/posts/:id` goes to the controller "posts" and the action "show". The controller already exists since we created it before. We only need to create the action. Open `app/controllers/posts_controller.rb` and place the following inside:

```ruby
def show
  @post = Post.find params[:id]
end
```

This will expose the variable `@post` to the view. Notice how we don't call `render`, `erb` or anything like that. Rails does that automatically for you.
You only need to worry about creating the matching view, which is `app/views/posts/show.erb`. Create it with the following content:

```html
<h1><%= @post.title %></h1>
<p><%= @post.body %></p>
```

There is only one more thing left, we need to create a link in the index page that allows navigation to the show a link to each post. Change the `app/views/posts/index.erb` into the following:

```html
<h1>Blog</h1>

<ul>
  <% @posts.each do |post| %>
    <li>
      <a href="posts/<%= post.id %>">
        <%= post.title %>
      </a>
    </li>
  <% end %>
</ul>
```

Try your application and be proud. .
