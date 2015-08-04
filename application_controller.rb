require 'bundler'
Bundler.require
require_relative 'models/tweet.rb'
require_relative 'models/user.rb'

class ApplicationController < Sinatra::Base
  
  get '/' do 
    @user = User.new("Kanye", 219000, 2)
    @user2 = User.new("Kim", 4, 3000)
    erb :index
  end
    
  post "/send_tweet" do
    @user = User.new("Kanye", 219000, 2)
    @user2 = User.new("Kim", 4, 3000)
    @user.send_tweet(params[:send_tweet], @user2)
    erb :index
  end

end
