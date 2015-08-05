require 'bundler'
require 'pry'
Bundler.require
require_relative 'models/tweet.rb'
require_relative 'models/user.rb'

class ApplicationController < Sinatra::Base
  
  get '/' do 
  @user = User.new("Kanye",219000,2)
  @user2 = User.new("Kim",4,3000)
    erb :index
  end
  
  post "/send_tweet" do
     @user = User.new("Kanye", 219000, 2)
     @user2 = User.new("Kim", 4, 3000)
      
    @user.send_tweet(params[:send], @user2)
 
    erb :index
  end
  get '/profile/:name'  do
    @hi = User.new(params[:name], 153, 374)
  @hi2 = User.new("Tim Cook", 40000000, 3)
  @hi.send_tweet("Hi",@hi2)
   @hi.send_tweet("params[:send]", @hi2)
   @hi.send_tweet("Thanks, Tim", @hi2)
  erb :profile
end
end
