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

posts = [
  Post.new(0, 'Blog Tutorial', 'Content', 'Gabriel', '7 de Agosto'),
  Post.new(1, 'Blog Tutorial 2', 'Content', 'Gabriel', '7 de Agosto')
]

get '/' do
  @posts = posts
  erb :index
end

get '/show/:id' do
  @post = posts.find do |post|
    post.id == params[:id].to_i
  end

  erb :show
end










