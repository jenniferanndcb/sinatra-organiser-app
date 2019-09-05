class AddUserBelongsToHousehold < ActiveRecord::Migration
  def change
    add_column :users, :household, :belongs_to 
  end
end
