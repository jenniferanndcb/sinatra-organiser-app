class CreateHousehold < ActiveRecord::Migration
  def change
    create_table :households do |t| 
      t.string :household_name 
    end
  end
end
