class CreateUsers < ActiveRecord::Migration
  
  def up
    create_table :users do |t|
      t.string :username
      t.integer :followers
      t.integer :following
    end
  end
  
  def down
    drop_tables :users
  end
  
end
