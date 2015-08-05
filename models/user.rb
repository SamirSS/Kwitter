require_relative 'tweet.rb'

class User < ActiveRecord::Base
  
#   attr_accessor :username, :followers, :following
  
#   def initialize(username, followers, following)
#     @username = username
#     @followers = followers
#     @following = following
#     @feed = []
#     @feed_strings = []
#   end
  
#   def send_tweet(message, to_user)
#     kanye = Tweet.new(@username, message, to_user)
#     @feed << kanye
#   end
  
#   def display_feed
#     i=0
#     while(i < @feed.length)
#       @feed_strings[i] = @feed[i].display_tweet
#       i+=1
#     end
#     return @feed_strings
#   end
  
end