class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email 
      t.string :first_name 
      t.string :household_name 
      t.string :password_digest
      t.belongs_to :household 
    end 
  end
end
