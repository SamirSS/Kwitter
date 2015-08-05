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
  get '/profile/:name'  do
  erb :profile
end
end
