 require_relative 'user.rb'
class Tweet < ActiveRecord::Base
 
#   attr_accessor :user, :message, :to_user
  
#   def initialize(user, message, to_user)
#     @user = user
#     @message = message.to_s
#     @to_user = to_user
#   end
  
#   def display_tweet
#     return "#{@user} sent a tweet to #{@to_user.username} <br />#{@message} <br />"
#   end
  
end