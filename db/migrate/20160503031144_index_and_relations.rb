class IndexAndRelations < ActiveRecord::Migration
  def self.up
    change_column("users","email", :string, :limite=>100)
    rename_column("users","paassword","hashed_password")
    add_index("words","word")
    add_index("users","username")
  end
  def self.down
    change_column("users","email", :string, :default=>"", :null=>false)
    rename_column("users","hashed_password","paassword")
    remove_index("users","username")
    remove_index("words","word")
  end
end
