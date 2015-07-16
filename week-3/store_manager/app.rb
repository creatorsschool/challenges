# coding: utf-8
require 'sinatra'

class Product
  attr_reader :name, :price, :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end
end

products =  []
products << Product.new('Calças da moda', 30, 'É mesmo da moda!')

get '/' do
  @products = products
  erb :index
end

get '/show/:name' do
  @product = products.find do |product|
    product.name == params[:name]
  end
  erb :show
end

post '/new' do
  products << Product.new(params[:name], params[:price].to_i, params[:description])
  redirect '/'
end

get '/remove/:name' do
  products.delete_if do |product|
    product.name == params[:name]
  end

  redirect '/'
end
