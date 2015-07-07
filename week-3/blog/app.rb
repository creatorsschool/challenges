require 'sinatra'

class Post
  attr_reader :id, :title, :body, :author, :created_at

  def initialize(id, title, body, author, created_at)
    @id = id
    @title = title
    @body = body
    @author = author
    @created_at = created_at
  end
end

class Comment
  attr_reader :id, :body, :author, :post_id

  def initialize(id, body, author, post_id)
    @id = id
    @body = body
    @author = author
    @post_id = post_id
  end
end

posts = [
  Post.new(0, 'Blog Tutorial', 'Content', 'Gabriel', '7 de Agosto'),
  Post.new(1, 'Blog Tutorial 2', 'Content', 'Gabriel', '7 de Agosto')
]

comments = [
  Comment.new(1, 'I really like this post', 'Gabriel', 1),
  Comment.new(2, 'I really like this post 2', 'Gabriel', 1),
  Comment.new(3, 'I really like this post 3', 'Gabriel', 1)
]

def comments_for_post(comments, post)
  comments.select do |comment|
    comment.post_id == post.id
  end
end

get '/' do
  @posts = posts
  erb :index
end

get '/show/:id' do
  @post = posts.find do |post|
    post.id == params[:id].to_i
  end

  @comments = comments_for_post(comments, @post)

  erb :show
end









