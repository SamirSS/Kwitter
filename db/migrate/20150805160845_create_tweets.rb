class CreateTweets < ActiveRecord::Migration
  
  def up
    create_table :tweets do |t|
      t.belongs_to :user
      t.string :message
      t.string :to_user
      
      t.timestamps
    end
  end
  
  def down
    drop_table :tweets
  end
  
end
