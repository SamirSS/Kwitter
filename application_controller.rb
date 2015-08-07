require 'bundler'
require 'pry'
Bundler.require
require_relative 'models/tweet.rb'
require_relative 'models/user.rb'
require './config/environment.rb'

class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, 'public'
    set :views, 'views'
    
    enable :sessions
    set :session_secret, 'kwitter'
  end
  
  get '/' do 
    erb :index
  end
  
  post "/send_tweet" do
    erb :index
  end
#     get '/profile/:name'  do
#     erb :profile
#   end
  
  post '/tweet' do
    @tweet = Tweet.new
    @tweet.message = params[:message]
    @tweet.user_id = params[:user]
    @tweet.save
    erb :index
  end
  
  post '/sign-up' do
    @user = User.new
    @user.username = params[:username]
    @user.save
    
    if @user
      session[:user_id] = @user
    end
    
    erb :index
  end
  
  post '/login' do
    @user = User.find(params[:id].to_i)
    
    if @user
      session[:user_id] = @user
    end
    
    erb :index
  end
  
  post '/logout' do
    session[:user_id] = nil
    erb :index
  end
  
end
