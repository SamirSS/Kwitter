class CreateTweets < ActiveRecord::Migration
  
  def up
    create_table :tweets do |t|
      t.string :user
      t.string :message
      t.string :to_user
    end
  end
  
  def down
    drop_tables :tweets
  end
  
end
