class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string "word", :limit => 50
      t.string "pronunciation", :limit => 50
      t.string "question"
      t.integer "box"
      t.timestamps null: false
    end
  end
  def self.down
    drop_table :words
  end
end
