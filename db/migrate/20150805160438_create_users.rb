class CreateUsers < ActiveRecord::Migration
  
  def up
    create_table :users do |t|
      t.string :username
      t.integer :followers
      t.integer :following
      
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
  
end
