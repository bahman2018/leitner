class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string "username", :limit => 25
      t.string "name", :limit => 25
      t.string "paassword", :limit =>25
      t.string "email", :defult => "" , :null => false

      t.timestamps null: false
    end
  end
  def self.down
     drop_table :users
  end
end
