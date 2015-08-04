class Tweet
  
  attr_accessor :user, :message, :to_user
  
  def initialize(user, message, to_user)
    @user = user
    @message = message
    @to_user = to_user
  end
  
  def display_tweet
    return "#{@user} sent a tweet to #{@to_user}\n#{@message}"
  end
  
end