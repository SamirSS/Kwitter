require 'bundler'
require 'pry'
Bundler.require
require_relative 'models/tweet.rb'
require_relative 'models/user.rb'
require './config/environment.rb'

class ApplicationController < Sinatra::Base
  
  get '/' do 
    erb :index
  end
  
  post "/send_tweet" do
    erb :index
  end
#     get '/profile/:name'  do
#     erb :profile
#   end
  
  post '/sign-up' do
    @user = User.new
    @user.username = params[:username]
    @user.save
    erb :index
  end
  
  post '/tweet' do
    @tweet = Tweet.new
    @tweet.message = params[:message]
    @tweet.user_id = params[:user]
    @tweet.save
    erb :index
  end
  
end
