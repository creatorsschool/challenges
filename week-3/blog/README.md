# Creating a blog

Almost everyone start with building a blog. In sinatra write an application with the following features.

* A page to view the list of all posts. The posts descriptions should be an excerpt.
* A page where you can see all the information of a post.
* You should be able to navigate between all posts.
* The blog's header and footer should be consistent between all pages.

You need to create posts for your application. Start with the following code:

```ruby
require 'sintra'

class Post
  def initialize(id, title, body, author, created_at)
    ...
  end
  ...
end

posts = [
  ...
]

get '/' do
  @posts = posts
  erb :index
end

def '/show/:id' do
  @post = # find post
  erb :show
end
```

## Part II - Comments

it's time to support community feedback on your blog. Let's add comments. A comment should belong to a post. For this exercise you need to create some dummy comments and then on each post's page. Use the following as a starting reference:

```ruby
class Comment
  def initialize(id, body, author, post_id)
    ...
  end
  ...
end

comments = [
  Comment.new(1, 'I really like this post', 'Gabriel', 1)
]

def '/show/:id' do
  @post = # find post
  @comments = # find comments where post_id is equal to @post.id
  erb :show
end
```

## Part III - Comment Form

Let's make this better. Let's allow people to really comment your posts. Add a comment form to your posts page. Validate and save the comments and redirect to the post's page.

```ruby
post '/show/:id/comment' do
  ...
end
```
